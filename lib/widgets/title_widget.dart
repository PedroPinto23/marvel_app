import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/marvel_comics.png", height: 100),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Characters",
              style: GoogleFonts.bubblegumSans(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
