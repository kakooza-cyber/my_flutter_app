import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color(0xFF4A6FA5);

  static const Color secondary = Color(0xFFFF9A3D);

  static ThemeData themeData = ThemeData(

    primaryColor: primary,

    scaffoldBackgroundColor: Colors.white,

    textTheme: const TextTheme(

      headlineLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),

      bodyMedium: TextStyle(fontSize: 16),

    ),

  );

}