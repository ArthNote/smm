// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smm/utils/myColors.dart';

class Navigationtheme {
  static NavigationBarThemeData lightTheme = NavigationBarThemeData(
    backgroundColor: lightBg,
    indicatorColor: lightPrimary.withOpacity(0.7),
    elevation: 5,
    height: 80,
    labelTextStyle: WidgetStateProperty.all(
      TextStyle(fontFamily: 'Poppins', fontSize: 13),
    ),
    iconTheme: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: darkBg);
        }
        return IconThemeData(color: lightPrimary);
      },
    ),
  );

  static NavigationBarThemeData darkTheme = NavigationBarThemeData(
    backgroundColor: darkBg,
    indicatorColor: darkPrimary.withOpacity(0.7),
    elevation: 5,
    height: 80,
    labelTextStyle: WidgetStateProperty.all(
      TextStyle(fontFamily: 'Poppins', fontSize: 13),
    ),
    iconTheme: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: lightBg);
        }
        return IconThemeData(color: darkPrimary);
      },
    ),
  );
}
