import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/MOBILE/CONSTANTS/export_mobile_cons.dart';

class MScreenC extends StatelessWidget {
  const MScreenC({Key? key}) : super(key: key);

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
    Widget mediumText2(
    String text,
    double size,
  ) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.poppins(
          color: Colors.grey[400],
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          fontSize: size),
    );
  }

  Widget skillBox(
    String text,
  ) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(13),
      ),
      child: bottomText(text, Colors.white, 12),
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
              mediumText2(company, 14),
              mediumText2(date, 11),
            ],
          ),
        ],
      ),
    );
  }

  Widget aboutMe() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:40),
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
      width: size.width,
      height: 800,
      child: Stack(
        children: [
          Positioned(
            child: hollowCircle(Colors.teal, 20),
            top: 20,
            left: 30,
          ),
          Positioned(
            child: hollowCircle(Colors.blue, 30),
            bottom: 20,
            right: 30,
          ),
          Positioned(
            child: hollowCircle(Colors.cyan, 30),
            bottom: 80,
            left: 50,
          ),
          Positioned(
            child: hollowCircle(Colors.cyan, 25),
            right: 10,
            top: 11,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(20, 50, 20, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bottomTextBold("Skills", Colors.white, 50),
                      solidCircle(Colors.red, 30),
                    ],
                  ),
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
