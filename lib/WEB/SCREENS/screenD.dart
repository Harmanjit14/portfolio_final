import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/WEB/CONSTANTS/export_web_cons.dart';

class ScreenD extends StatefulWidget {
  const ScreenD({ Key? key }) : super(key: key);

  @override
  _ScreenDState createState() => _ScreenDState();
}

class _ScreenDState extends State<ScreenD> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(200, 50, 200, 50),
      height: 800,
      width: size.width,
      child: Stack(
        children: [
          Positioned(right: 80, top: 60, child: hollowCircle(Colors.blue, 40)),
          Positioned(left: 400, top: 100, child: hollowCircle(Colors.teal, 40)),
          Positioned(
              left: 70, bottom: 60, child: hollowCircle(Colors.cyan, 40)),
          Positioned(
              right: 300,
              bottom: 20,
              child: hollowCircle(Colors.lightBlue, 40)),
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
                    fontSize: 60,
                    letterSpacing: 0,
                    // fontSize: size
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      hover = value;
                    });
                  },
                  onTap: () {
                    
                  },
                  child: Text(
                    "Let's talk...",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        color: (hover) ? Colors.green : Colors.red[400],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                        fontSize: 60),
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