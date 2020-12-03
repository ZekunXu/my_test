import 'package:flutter/material.dart';

class MyColor {
  static const MaterialColor blue = MaterialColor(
    _myPrimaryValue,
    <int, Color>{
      50: Color(0xFFE7EFFB),
      100: Color(0xFFD1E1F8),
      200: Color(0xFFA8C7F5),
      300: Color(0xFF81B0F5),
      400: Color(0xFF5F9DF9),
      500: Color(_myPrimaryValue),
      600: Color(0xFF397EE5),
      700: Color(0xFF3270CC),
      800: Color(0xFF2C62B2),
      900: Color(0xFF265499),
    },
  );

  static const int _myPrimaryValue = 0xFF3F8CFF;
}