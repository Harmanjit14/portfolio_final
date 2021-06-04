import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio_new/WEB/CONSTANTS/export_web_cons.dart';

class ScreenA extends StatelessWidget {
  Widget backgroundText(Size size) {
    return Positioned(
      top: -80,
      left: 0,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: (size.width >= 1800) ? 400 : 350,
              child: Text(
                "STU",
                style: GoogleFonts.poppins(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0,
                    fontSize: (size.width >= 1800) ? 480 : 360),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,

                // maxLines: 3,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              height: (size.width >= 1800) ? 400 : 350,
              child: Text(
                "DENT",
                style: GoogleFonts.poppins(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0,
                    fontSize: (size.width >= 1800) ? 480 : 360),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,

                // maxLines: 3,
              ),
            ),
          ],
        ),
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

  Widget topName() {
    return Container(
      padding: EdgeInsets.all(40),
      child: Text(
        "Harmanjit Singh",
        maxLines: 1,
        style: GoogleFonts.greatVibes(
          fontSize: 30,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget whoamI(Size size) {
    return (size.width > 1200)
        ? Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  "I build mobile apps",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  "I design backend systems",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  "I deploy stuff",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              RotatedBox(
                  quarterTurns: -1,
                  child: Icon(
                    LineIcons.smilingFace,
                    size: 30,
                    color: Colors.grey[400],
                  )),
            ],
          )
        : Container();
  }

  Widget responsetext() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 30, 0),
      padding: EdgeInsets.all(40),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            LineIcons.cookieBite,
            color: Colors.grey[600],
            size: 23,
          ),
          Text(
            "Finally!, this website is f***ing ",
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.grey[600],
              letterSpacing: 1.3,
            ),
          ),
          Text(
            "responsive",
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.grey[400],
              letterSpacing: 1.3,
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
            child: backgroundText(size),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 150),
            child: nameWid(),
          ),
          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.fromLTRB(size.width / 6, 0, 0, 90),
            alignment: Alignment.bottomLeft,
            child: whoamI(size),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: topName(),
          ),
          Container(
            alignment: Alignment.topRight,
            child: responsetext(),
          ),
        ],
      ),
    );
  }
}
