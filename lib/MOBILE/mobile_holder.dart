import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/MOBILE/CONSTANTS/background.dart';
import 'SCREENS/export_mobile_screens.dart';

class MobileHolder extends StatelessWidget {
  const MobileHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[300]),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Text(
              "Finally!, this website is f***ing ",
              style: GoogleFonts.poppins(
                fontSize: 10,
                color: Colors.grey[600],
                letterSpacing: 1.3,
              ),
            ),
            Text(
              "responsive",
              style: GoogleFonts.poppins(
                fontSize: 10,
                color: Colors.grey[400],
                letterSpacing: 1.3,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        
      ),
      body: Stack(
        children: [
          Background(),
          ListView(
            children: [
              MScreenA(),
            ],
          ),
        ],
      ),
    );
  }
}
