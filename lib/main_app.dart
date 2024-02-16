import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 213, 215, 240),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 142, 146, 255),
          ),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'sans-serif',
            )
          ),
        ),
    );
  }
}
