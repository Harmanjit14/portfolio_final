import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: (size.height < 800) ? 800 : size.height,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child:nameWid()
          )
        ],
      ),
    );
  }
}
