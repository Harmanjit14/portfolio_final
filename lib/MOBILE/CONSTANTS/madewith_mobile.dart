import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class MadeWithMobile extends StatelessWidget {
  const MadeWithMobile({Key? key}) : super(key: key);
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
              size: 16,
              color: Colors.grey[300],
            ),
          ),
          SizedBox(height: 8),
          bottomText("and", 12),
          SizedBox(height: 10),
          RotatedBox(
            quarterTurns: -1,
            child: Icon(
              LineIcons.heart,
              size: 16,
              color: Colors.grey[300],
            ),
          ),
          SizedBox(height: 8),
          bottomText("Made with", 12),
        ],
      ),
    );
  }
}
