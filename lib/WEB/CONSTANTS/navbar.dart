import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  List<bool> navbarItems = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RotatedBox(
            quarterTurns: -1,
            child: InkWell(
              onHover: (value) {
                setState(() {
                  navbarItems[0] = value;
                });
              },
               onTap: () async{
                await launch("https://www.instagram.com/harmanjit_14/");
              },
              child: Text(
                "Instagram",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: (navbarItems[0]) ? Colors.cyan : Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height:30),
          RotatedBox(
            quarterTurns: -1,
            child: InkWell(
              onHover: (value) {
                setState(() {
                  navbarItems[1] = value;
                });
              },
               onTap: () async{
                await launch("https://github.com/Harmanjit14");
              },
              child: Text(
                "Github",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: (navbarItems[1]) ? Colors.cyan : Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height:30),
          RotatedBox(
            quarterTurns: -1,
            child: InkWell(
              onHover: (value) {
                setState(() {
                  navbarItems[2] = value;
                });
              },
               onTap: () async{
                await launch("https://www.linkedin.com/in/harmanjit-singh-1405");
              },
              child: Text(
                "LinkedIn",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: (navbarItems[2]) ? Colors.cyan : Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height:30),
          RotatedBox(
            quarterTurns: -1,
            child: InkWell(
              onHover: (value) {
                setState(() {
                  navbarItems[3] = value;
                });
              },
              onTap: () async{
                await launch("https://leetcode.com/Harmanjit14/");
              },
              child: Text(
                "LeetCode",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: (navbarItems[3]) ? Colors.cyan : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
