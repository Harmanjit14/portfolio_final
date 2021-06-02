
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/WEB/CONSTANTS/export_web_cons.dart';

class ScreenA extends StatelessWidget {
  Widget backgroundText() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 350,
            child: Text(
              "STU",
              style: GoogleFonts.poppins(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0,
                  fontSize: 360),
              overflow: TextOverflow.visible,
              textAlign: TextAlign.start,

              // maxLines: 3,
            ),
          ),
          Container(
             alignment: Alignment.topLeft,
            height: 350,
            child: Text(
              "DENT",
              style: GoogleFonts.poppins(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0,
                  fontSize: 360),
              overflow: TextOverflow.visible,
              textAlign: TextAlign.start,

              // maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget nameWid() {
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  overflow: TextOverflow.visible,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0,
                      fontSize: 150),
                ),
                solidCircle(Colors.red, 50),
              ],
            ),
          ),
          Container(
            height: 130,
            child: Text(
              "I am",
              overflow: TextOverflow.visible,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  fontSize: 150),
            ),
          ),
          Container(
            height: 130,
            child: Text(
              "Harman",
              overflow: TextOverflow.visible,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  fontSize: 150),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: (size.height < 800) ? 800 : size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: backgroundText(),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 150),
            child: nameWid(),
          ),
          
        ],
      ),
    );
  }
}
