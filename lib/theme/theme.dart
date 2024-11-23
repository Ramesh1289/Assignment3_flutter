import 'package:flutter/material.dart';

class ThemeModel {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.limeAccent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 18,fontWeight: FontWeight.bold,
        color: Colors.purple,
      )
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.green,
    appBarTheme:AppBarTheme(
      backgroundColor: Colors.grey,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 24,fontWeight: FontWeight.bold,
          color: Colors.cyan,
        )
    ),
  );
}