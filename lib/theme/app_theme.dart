import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Declaracion de color 
  static const mainColor = Color.fromARGB(255, 142, 146, 255);
  static const accentColor = Color.fromARGB(255, 62, 65, 115);
  static const backColor =  Color.fromARGB(255, 213, 215, 240);
  static const bk =  Color.fromARGB(255, 29, 29, 29);


// Declaracion de tema claro

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,

        appBarTheme: AppBarTheme(
          color: mainColor,
          
          titleTextStyle: GoogleFonts.lato(
            color: backColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,

          ),
          ),
          iconTheme: const IconThemeData(
            color: bk,
            size:28,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                mainColor
              ),
              foregroundColor: MaterialStateProperty.all(
                bk
              ),
              textStyle: MaterialStateProperty.all(
                GoogleFonts.lato(fontSize: 16.0),

              ),

            ),
            
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

            headlineMedium: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 1.5,
            ),

            bodySmall: GoogleFonts.montserrat(
              color: accentColor,
              fontSize: 12.5,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic
            ),
          ),
  );



}