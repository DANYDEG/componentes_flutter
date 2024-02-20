import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Declaracion de color 
  static const mainColor = Color.fromARGB(255, 142, 146, 255);
  static const accentColor = Color.fromARGB(255, 62, 65, 115);
  static const backColor =  Color.fromARGB(255, 213, 215, 240);


// Declaracion de tema claro

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,

        appBarTheme: const AppBarTheme(
          color: mainColor,
          ),

          textTheme: TextTheme(
            headlineLarge: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationColor: mainColor,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 2.0,
              fontStyle: FontStyle.italic,
            ),

            bodySmall: GoogleFonts.montserrat(
              color: accentColor,
              fontSize: 16.5,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic
            ),
          ),
  );



}