import 'package:flutter/material.dart';

class HelperFunctions {
  //get screen width
  static double getScreenWidth(context) {
    return MediaQuery.of(context).size.width;
  }

  //get screen height
  static double getScreenHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static String eclipseText(String text, int maxLength) {
    if (text.length > maxLength) {
      return text.substring(0, maxLength) + '...';
    }
    return text;
  }
}