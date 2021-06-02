import 'package:flutter/material.dart';
import 'package:portfolio_new/WEB/CONSTANTS/export_web_cons.dart';
import 'package:portfolio_new/WEB/SCREENS/export_web_screen.dart';
class WebHolder extends StatelessWidget {
  const WebHolder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Background(),
          ListView(
            children: [
              ScreenA(),
              ScreenA(),
              ScreenA(),
            ],
          ),
          Container(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              alignment: Alignment.bottomLeft,
              child: MadeWith(),
            ),
          ),
          Container(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              alignment: Alignment.centerRight,
              child: Navbar(),
            ),
          )
        ],
      ),
    );
  }
}