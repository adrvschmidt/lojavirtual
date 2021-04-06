

import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  final IconData icon;
  final String tile;
  final PageController pageController;
  final int page;

  DrawerTile(this.icon, this.tile, this.pageController, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
          pageController.jumpToPage(page);
        },
        child: Container(
          height: 60.0,
          child: Row(
            children: [
              Icon(icon, size: 32, color: pageController.page.round() == page ? Theme.of(context).primaryColor : Colors.grey[700]),
              SizedBox(width: 32,),
              Text(tile, style: TextStyle(fontSize: 16, color: Colors.black),),
            ],
          ),
        ),
      ),
    );
  }
}
