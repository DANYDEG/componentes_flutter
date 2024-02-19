import 'package:flutter/material.dart';

class AppTheme {
  // Declaracion de color 
  static const mainColor = Color.fromARGB(255, 142, 146, 255);
  static const backColor =  Color.fromARGB(255, 213, 215, 240);


// Declaracion de tema claro

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,

        appBarTheme: const AppBarTheme(
          color: mainColor,
          ),

          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'sans-serif',
            )
          ),
  );



}