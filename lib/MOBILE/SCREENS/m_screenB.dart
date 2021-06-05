import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/MOBILE/CONSTANTS/export_mobile_cons.dart';

class MScreenB extends StatelessWidget {
  const MScreenB({Key? key}) : super(key: key);

  Widget bottomText(String text, Color color, double size) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.poppins(
          color: color,
          fontWeight: FontWeight.normal,
          letterSpacing: 0,
          fontSize: size),
    );
  }

  Widget aboutMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        bottomText(
          "Focused professional having good technical and communication skills, currently pursueing BTech in COE at Thapar Institute of Engineering and Technology. Proficient at designing and formulating application frameworks, writing code in various languages, feature development and implementation. Specialize in thinking outside the box to find unique solutions to difficult engineering problems. Always up to learn something new.",
          Colors.grey,
          17,
        ),
        SizedBox(height: 30),
        bottomText(
          "Ready to collaborate on projects based on Flutter and Django. Currently learning AWS...",
          Colors.grey,
          17,
        ),
      ],
    );
  }

  Widget bottomTextBold(String text, Color color, double size) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color,
          fontWeight: FontWeight.w900,
          letterSpacing: 0,
          fontSize: size),
      overflow: TextOverflow.visible,
      // maxLines: 3,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 800,
      child: Stack(
        children: [
          Positioned(
            child: hollowCircle(Colors.teal, 30),
            top: 40,
            right: 20,
          ),
          Positioned(
            child: hollowCircle(Colors.blue, 25),
            bottom: 50,
            right: 40,
          ),
          Positioned(
            child: hollowCircle(Colors.cyan, 27),
            bottom: 80,
            left: 30,
          ),
          Positioned(
            child: hollowCircle(Colors.lightBlueAccent, 23),
            left: 10,
            top: 50,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(20, 50, 20, 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    bottomTextBold("About", Colors.white, 55),
                    SizedBox(width:6),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        solidCircle(Colors.red, 10),
                        SizedBox(height: 6),
                        solidCircle(Colors.red, 10),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: aboutMe(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
