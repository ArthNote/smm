// ignore_for_file: prefer_const_constructors

import 'package:smm/utils/customThemes/appbarTheme.dart';
import 'package:smm/utils/customThemes/buttonTheme.dart';
import 'package:smm/utils/customThemes/datePickerTheme.dart';
import 'package:smm/utils/customThemes/navigationTheme.dart';
import 'package:smm/utils/customThemes/outlineButtonTheme.dart';
import 'package:smm/utils/customThemes/textFieldTheme.dart';
import 'package:smm/utils/customThemes/textTheme.dart';
import 'package:smm/utils/customThemes/timePickerTheme.dart';
import 'package:smm/utils/myColors.dart';
import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light(
    useMaterial3: false,
  ).copyWith(
    brightness: Brightness.light,
    primaryColor: lightPrimary,
    textTheme: TTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: TButtonTheme.LightButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.LightOutlineButtonTheme,
    appBarTheme: TAppbarTheme.LightTheme,
    inputDecorationTheme: TTextFieldTheme.LightTextFieldTheme,
    navigationBarTheme: Navigationtheme.lightTheme,
    cardColor: lightCard,
    timePickerTheme: TTimePickerTheme.light,
    datePickerTheme: DatepickerTheme.light,
  );

  final darkTheme = ThemeData.dark(
    useMaterial3: false,
  ).copyWith(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    textTheme: TTextTheme.darkTextTheme,
    scaffoldBackgroundColor: const Color.fromARGB(255, 24, 24, 24),
    elevatedButtonTheme: TButtonTheme.DarkButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.DarkOutlineButtonTheme,
    inputDecorationTheme: TTextFieldTheme.DarkTextFieldTheme,
    navigationBarTheme: Navigationtheme.darkTheme,
    appBarTheme: TAppbarTheme.DarkTheme,
    cardColor: darkCard,
    timePickerTheme: TTimePickerTheme.dark,
    datePickerTheme: DatepickerTheme.dark,
  );
}
