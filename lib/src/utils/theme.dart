import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline2: GoogleFonts.montserrat(color : Colors.black54,
      fontSize : 24)
    )
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
          headline2: GoogleFonts.montserrat(color : Colors.white70,
              fontSize : 24)
      )
  );
}