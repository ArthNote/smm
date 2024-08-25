
import 'package:flutter/material.dart';
import 'package:smm/utils/myColors.dart';

class TButtonTheme {
  static ElevatedButtonThemeData LightButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(lightPrimary),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevation: WidgetStateProperty.all<double>(0),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    ),
  );

  static ElevatedButtonThemeData DarkButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(darkPrimary),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevation: WidgetStateProperty.all<double>(0),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    ),
  );
}
