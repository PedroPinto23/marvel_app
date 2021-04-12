import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final customStyle = CustomStyle();

class CustomStyle {
  Color color(BuildContext context) => Theme.of(context).primaryColor;

  TextStyle card(BuildContext context, double size) =>
      GoogleFonts.bubblegumSans(
          color: color(context),
          fontSize: size,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2);

  TextStyle title() => GoogleFonts.bubblegumSans(fontSize: 30);

  TextStyle description(BuildContext context) => GoogleFonts.bubblegumSans(
        fontSize: 20,
        color: color(context),
      );
}
