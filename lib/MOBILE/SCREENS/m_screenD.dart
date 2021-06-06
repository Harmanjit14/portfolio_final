import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/MOBILE/CONSTANTS/export_mobile_cons.dart';

class MScreenD extends StatefulWidget {
  const MScreenD({Key? key}) : super(key: key);

  @override
  _MScreenDState createState() => _MScreenDState();
}

class _MScreenDState extends State<MScreenD> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(30, 50, 30, 50),
      height: 800,
      width: size.width,
      child: Stack(
        children: [
          Positioned(right: 40, top: 30, child: hollowCircle(Colors.blue, 24)),
          Positioned(left: 20, top: 70, child: hollowCircle(Colors.teal, 30)),
          Positioned(
              left: 70, bottom: 20, child: hollowCircle(Colors.cyan, 27)),
          Positioned(
              right: 30, bottom: 10, child: hollowCircle(Colors.lightBlue, 23)),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "I'm always interested about cool stuff. Are you minding a project?",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    letterSpacing: 0,
                    // fontSize: size
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Let's talk...",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                        fontSize: 45),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
