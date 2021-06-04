import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/MOBILE/CONSTANTS/background.dart';

class MobileHolder extends StatelessWidget {
  const MobileHolder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:  Text(
            "Finally!, this website is f***ing ",
            style: GoogleFonts.poppins(
              fontSize: 11,
              color: Colors.grey[600],
              letterSpacing: 1.3,
            ),
          ),
      ),
      drawer: Drawer(),
      body: Stack(

        children: [
          Background(),
          ListView(
            children: [],
          ),
        ],
      ),
    );
  }
}