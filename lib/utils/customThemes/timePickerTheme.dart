import 'package:smm/utils/myColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TTimePickerTheme {
  static TimePickerThemeData light = TimePickerThemeData(
    backgroundColor: lightCard,
    cancelButtonStyle: ButtonStyle(
      overlayColor: WidgetStateProperty.all(lightPrimary.withOpacity(0.2)),
      foregroundColor: WidgetStateProperty.all(lightPrimary),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: BorderSide(color: lightPrimary),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    confirmButtonStyle: ButtonStyle(
      overlayColor: WidgetStateProperty.all(lightPrimary.withOpacity(0.2)),
      foregroundColor: WidgetStateProperty.all(lightBg),
      backgroundColor: WidgetStateProperty.all(lightPrimary),
    ),
    dialHandColor: lightPrimary,
    dayPeriodTextColor: WidgetStateColor.resolveWith(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return lightBg;
        }
        return lightPrimary;
      },
    ),
    hourMinuteColor: lightPrimary.withOpacity(0.12),
    dialBackgroundColor: lightPrimary.withOpacity(0.12),
    hourMinuteTextColor: WidgetStateColor.resolveWith(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return lightPrimary;
        }
        return darkBg;
      },
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightPrimary),
      ),
      contentPadding: EdgeInsets.zero,
    ),
    dayPeriodColor: lightPrimary,
    entryModeIconColor: lightPrimary,
    helpTextStyle: TextStyle(color: lightPrimary),
    dayPeriodBorderSide: BorderSide(color: lightPrimary),
  );

  static TimePickerThemeData dark = TimePickerThemeData(
    backgroundColor: darkCard,
    cancelButtonStyle: ButtonStyle(
      overlayColor: WidgetStateProperty.all(darkPrimary.withOpacity(0.2)),
      foregroundColor: WidgetStateProperty.all(darkPrimary),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: BorderSide(color: darkPrimary),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    confirmButtonStyle: ButtonStyle(
      overlayColor: WidgetStateProperty.all(darkPrimary.withOpacity(0.2)),
      foregroundColor: WidgetStateProperty.all(darkBg),
      backgroundColor: WidgetStateProperty.all(darkPrimary),
    ),
    dialHandColor: darkPrimary,
    dayPeriodTextColor: WidgetStateColor.resolveWith(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return darkBg;
        }
        return darkPrimary;
      },
    ),
    hourMinuteColor: darkPrimary.withOpacity(0.12),
    dialBackgroundColor: darkPrimary.withOpacity(0.12),
    hourMinuteTextColor: WidgetStateColor.resolveWith(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return darkPrimary;
        }
        return lightBg;
      },
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkPrimary),
      ),
      contentPadding: EdgeInsets.zero,
    ),
    dayPeriodColor: darkPrimary,
    entryModeIconColor: darkPrimary,
    helpTextStyle: TextStyle(color: darkPrimary),
    dayPeriodBorderSide: BorderSide(color: darkPrimary),
  );
}
