import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portfolio_new/MOBILE/CONSTANTS/export_mobile_cons.dart';
import 'package:portfolio_new/WEB/CONSTANTS/export_web_cons.dart';

class MScreenA extends StatelessWidget {
  const MScreenA({Key? key}) : super(key: key);

  Widget nameWid() {
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
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
                      fontSize: 80),
                ),
                solidCircle(Colors.red, 30),
              ],
            ),
          ),
          Container(
            height: 70,
            child: Text(
              "I am",
              overflow: TextOverflow.visible,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  fontSize: 80),
            ),
          ),
          Container(
            height: 70,
            child: Text(
              "Harman",
              overflow: TextOverflow.visible,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  fontSize: 80),
            ),
          ),
        ],
      ),
    );
  }

  Widget whoamI() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RotatedBox(
          quarterTurns: 0,
          child: Text(
            "I build mobile apps",
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
        ),
        RotatedBox(
          quarterTurns: 0,
          child: Text(
            "I design backend systems",
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
        ),
        RotatedBox(
          quarterTurns: 0,
          child: Text(
            "I deploy stuff",
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
        ),
        RotatedBox(
            quarterTurns: 0,
            child: Icon(
              LineIcons.smilingFace,
              size: 14,
              color: Colors.grey[400],
            )),
      ],
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: (size.height < 800) ? 800 : size.height,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            child: MadeWithMobile(),
            margin: EdgeInsets.fromLTRB(0, 0, 20, 30),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                nameWid(),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
                    child: whoamI()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
