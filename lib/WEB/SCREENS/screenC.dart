import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/WEB/CONSTANTS/export_web_cons.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  Widget autoText(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: Colors.grey[900],
          fontWeight: FontWeight.w900,
          letterSpacing: 0,
          fontSize: 400),
      // maxLines: 3,
    );
  }

  Widget mainText(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 0,
          fontSize: 150),
      // maxLines: 3,
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

  Widget bottomText(
    String text,
    Color color,
    double size,
  ) {
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

  Widget mediumText(
    String text,
    double size,
  ) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.poppins(
          color: Colors.grey[300],
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          fontSize: size),
    );
  }

  Widget skillBox(
    String text,
  ) {
    return Container(
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(18),
      ),
      child: bottomText(text, Colors.white, 16),
    );
  }

  Widget expereinceBox(
    String title,
    String company,
    String date,
  ) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          solidCircle(Colors.lime, 10),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumText(title, 17),
              mediumText(company, 14),
              mediumText(date, 11),
            ],
          ),
        ],
      ),
    );
  }

  Widget aboutMe() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mediumText("Skills that I have ", 22),
        Row(
          children: [
            skillBox(
              "Flutter",
            ),
            skillBox(
              "Django",
            ),
            skillBox(
              "Java",
            ),
            skillBox(
              "Dart",
            ),
            skillBox(
              "Python",
            ),
          ],
        ),
        Row(
          children: [
            skillBox(
              "Firebase",
            ),
            skillBox(
              "SQL",
            ),
            skillBox(
              "Photoshop",
            ),
            skillBox(
              "Filmora",
            ),
          ],
        ),
        SizedBox(height: 40),
        mediumText("Experience", 22),
        SizedBox(height: 10),
        expereinceBox("Organising Team, Makeathon 3077",
            "Microsoft Learn Student Chapter", "Mar,2021"),
        SizedBox(height: 10),
        // SizedBox(width: 50),
        expereinceBox("Backend Developer", "Cybersify Technologies",
            "Oct,2020 - Feb,2021"),
        SizedBox(height: 10),
        expereinceBox(
            "UX Designer", "Cybersify Technologies", "Oct,2020 - Feb,2021"),
        SizedBox(height: 10),
        expereinceBox("Organising Team, Abhyudata",
            "Microsoft Learn Student Chapter", "Jul,2020"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 800,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            child: hollowCircle(Colors.teal, 40),
            top: 20,
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
            child: hollowCircle(Colors.cyan, 50),
            right: 180,
            top: 110,
          ),
          Positioned(
            child: hollowCircle(Colors.lightBlueAccent, 50),
            left: 20,
            top: 150,
          ),
           Container(
             alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(120, 50, 50, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: aboutMe(),
                ),
                SizedBox(
                  width: 80,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: 130,
                        child: bottomTextBold("Ski", Colors.white, 150)),
                    Container(
                        height: 130,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            solidCircle(Colors.red, 30),
                            bottomTextBold("lls", Colors.white, 150),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
