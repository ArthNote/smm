
import 'package:flutter/material.dart';
import 'package:smm/utils/myColors.dart';

class DatepickerTheme {
  static final DatePickerThemeData light = DatePickerThemeData(
    headerBackgroundColor: lightPrimary,
    backgroundColor: lightBg,
    todayBackgroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return lightPrimary;
        }
        return lightBg;
      },
    ),
    todayBorder: BorderSide(
      color: lightPrimary,
      width: 1,
    ),
    todayForegroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return lightBg;
        }
        return lightPrimary;
      },
    ),
    dayBackgroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return lightPrimary;
        }
        return lightBg;
      },
    ),
    yearBackgroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return lightPrimary;
        }
      },
    ),
    yearForegroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return lightBg;
        }
        return darkBg;
      },
    ),
    confirmButtonStyle: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(lightPrimary),
      overlayColor: WidgetStateProperty.all(lightPrimary.withOpacity(0.2)),
    ),
    cancelButtonStyle: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(lightPrimary),
      overlayColor: WidgetStateProperty.all(lightPrimary.withOpacity(0.2)),
    ),
  );

  static final DatePickerThemeData dark = DatePickerThemeData(
     headerBackgroundColor: darkPrimary,
    backgroundColor: darkBg,
    todayBackgroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return darkPrimary;
        }
        return darkBg;
      },
    ),
    todayBorder: BorderSide(
      color: darkPrimary,
      width: 1,
    ),
    todayForegroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return darkBg;
        }
        return darkPrimary;
      },
    ),
    dayBackgroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return darkPrimary;
        }
        return darkBg;
      },
    ),
    yearBackgroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return darkPrimary;
        }
      },
    ),
    yearForegroundColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return darkBg;
        }
        return lightBg;
      },
    ),
    confirmButtonStyle: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(darkPrimary),
      overlayColor: WidgetStateProperty.all(darkPrimary.withOpacity(0.2)),
    ),
    cancelButtonStyle: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(darkPrimary),
      overlayColor: WidgetStateProperty.all(darkPrimary.withOpacity(0.2)),
    ),
  );
}
