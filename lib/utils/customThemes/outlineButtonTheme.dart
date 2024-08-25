// ignore_for_file: prefer_const_constructors, non_constant_identifier_names


import 'package:flutter/material.dart';
import 'package:smm/utils/myColors.dart';

class TOutlineButtonTheme {
  static OutlinedButtonThemeData LightOutlineButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      foregroundColor: lightPrimary,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      side: BorderSide(
        color: lightPrimary,
        width: 1,
      ),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: lightPrimary,
      ),
    ),
  );

  static OutlinedButtonThemeData DarkOutlineButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      side: BorderSide(
        color: darkPrimary,
        width: 2,
      ),
      foregroundColor: darkPrimary,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: darkPrimary,
      ),
    ),
  );
}
