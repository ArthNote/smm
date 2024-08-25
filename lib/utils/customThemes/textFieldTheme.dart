// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:smm/utils/myColors.dart';
import 'package:flutter/material.dart';

class TTextFieldTheme {
  static InputDecorationTheme LightTextFieldTheme = InputDecorationTheme(
    suffixIconColor: WidgetStateColor.resolveWith(
      (states) {
        if (states.contains(WidgetState.focused)) {
          return lightPrimary;
        } else {
          return Colors.grey;
        }
      },
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: lightPrimary,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: lightPrimary,
      ),
    ),
    floatingLabelStyle: TextStyle(
      color: lightPrimary,
    ),
  );

  static InputDecorationTheme DarkTextFieldTheme = InputDecorationTheme(
    suffixIconColor: WidgetStateColor.resolveWith(
      (states) {
        if (states.contains(WidgetState.focused)) {
          return darkPrimary;
        } else {
          return Colors.grey;
        }
      },
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: darkPrimary,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: darkPrimary,
      ),
    ),
    floatingLabelStyle: TextStyle(
      color: darkPrimary,
    ),
    focusColor: darkPrimary,
  );
}
