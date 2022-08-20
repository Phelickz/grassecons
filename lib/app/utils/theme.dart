import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomThemeData {
  static TextStyle generateStyle(
      {required double fontSize,
      FontWeight fontWeight = FontWeight.normal,
      Color color = Colors.black,
      double? letterSpacing,
      double? lineHeight}) {
    return GoogleFonts.epilogue(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
        color: color,
        height: lineHeight,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none);
  }
}
