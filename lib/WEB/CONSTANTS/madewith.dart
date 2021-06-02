import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';

class MadeWith extends StatelessWidget {
  Widget bottomText(String text, double size) {
    return RotatedBox(
      quarterTurns: -1,
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: Colors.grey[300],
            fontWeight: FontWeight.normal,
            letterSpacing: 0,
            fontSize: size),
        // maxLines: 3,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RotatedBox(
            quarterTurns: -1,
            child: Icon(
              LineIcons.coffee,
              size: 23,
              color: Colors.grey[300],
            ),
          ),
          SizedBox(height: 10),
          bottomText("and", 18),
          SizedBox(height: 10),
          RotatedBox(
            quarterTurns: -1,
            child: Icon(
              LineIcons.heart,
              size: 23,
              color: Colors.grey[300],
            ),
          ),
          SizedBox(height: 10),
          bottomText("Made with", 18),
        ],
      ),
    );
  }
}
