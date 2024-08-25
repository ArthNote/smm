// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smm/utils/myColors.dart';
import 'package:smm/utils/sizes.dart';

class TAppbarTheme {
  static AppBarTheme LightTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: false,
    surfaceTintColor: Colors.transparent,
    scrolledUnderElevation: 0,
    titleSpacing: Sizes.defaultPadding - 10,
    iconTheme: IconThemeData(
      color: darkBg,
    ),
    titleTextStyle: TextStyle(
      color: darkBg,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );

  static AppBarTheme DarkTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: false,
    titleSpacing: Sizes.defaultPadding - 10,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: lightBg,
    ),
    titleTextStyle: TextStyle(
      color: lightBg,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );
}
