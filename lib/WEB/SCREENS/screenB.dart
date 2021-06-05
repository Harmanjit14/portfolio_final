import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/WEB/CONSTANTS/export_web_cons.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

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
          18,
        ),
        SizedBox(height: 30),
        bottomText(
          "Ready to collaborate on projects based on Flutter and Django. Currently learning AWS...",
          Colors.grey,
          18,
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
            child: hollowCircle(Colors.teal, 40),
            top: 60,
            right: 120,
          ),
          Positioned(
            child: hollowCircle(Colors.blue, 40),
            bottom: 20,
            right: 90,
          ),
          Positioned(
            child: hollowCircle(Colors.cyan, 60),
            bottom: 80,
            right: 590,
          ),
          Positioned(
            child: hollowCircle(Colors.lightBlueAccent, 50),
            left: 90,
            top: 150,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(120, 50, 120, 50),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: 130,
                        child: bottomTextBold("Ab-", Colors.white, 150)),
                    Container(
                        height: 130,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            bottomTextBold("out", Colors.white, 150),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                solidCircle(Colors.red, 30),
                                SizedBox(height: 10),
                                solidCircle(Colors.red, 30),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
                Expanded(
                    child: Container(
                  child: aboutMe(),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
