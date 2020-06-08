import 'package:flutter/material.dart';

class GlobalConfig {
//  static bool dark = true;
//  static ThemeData themeData = new ThemeData.dark();
//  static Color searchBackgroundColor = Colors.white10;
//  static Color cardBackgroundColor = new Color(0xFF222222);
//  static Color fontColor = Colors.white30;
  static bool dark = false;
  static ThemeData themeData = new ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: new Color(0xFFEBEBEB),
  );
  static Color searchBackgroundColor = new Color(0xFFEBEBEB);
  static Color cardBackgroundColor = Colors.white;
  static Color fontColor = Colors.black54;
}