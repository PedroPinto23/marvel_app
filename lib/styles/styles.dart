import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyle {
  Color color(BuildContext context) => Theme.of(context).primaryColor;

  TextStyle cardStyle(BuildContext context) => GoogleFonts.bubblegumSans(
      color: color(context),
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.2);

  TextStyle titleStyle() => GoogleFonts.bubblegumSans(fontSize: 30);
}
