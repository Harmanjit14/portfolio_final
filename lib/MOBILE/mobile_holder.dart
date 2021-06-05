import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/MOBILE/CONSTANTS/background.dart';
import 'SCREENS/export_mobile_screens.dart';

class MobileHolder extends StatelessWidget {
  const MobileHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Stack(
        children: [
          Background(),
          ListView(
            children: [
              MScreenA(),
              MScreenB(),
            ],
          ),
        ],
      ),
    );
  }
}
