
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/utils/secureStorage.dart';

class ThemeController extends GetxController{
  static ThemeController get instance => Get.find();

  //variables
  Rx<ThemeMode> themeM = ThemeMode.system.obs;

  @override
  void onInit(){
    super.onInit();
    //getThemeMode();
    _loadTheme();
  }

  @override
  void onReady(){
    super.onReady();
    _loadTheme();
  }

  void _loadTheme() async {
    String themeString = await getSavedTheme();
    themeM.value = _themeModeFromString(themeString);
    Get.changeThemeMode(themeM.value);
  }

  //Update current index when page scroll
  Future<String> getSavedTheme() async {
    String? theme = await SecureStorage.getTheme();
    if(theme == null){
      return 'system';
    }
    return theme;
  } 

   ThemeMode _themeModeFromString(String themeString) {
    switch (themeString) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }

  void setThemeMode(ThemeMode mode) {
    themeM.value = mode;
    Get.changeThemeMode(mode);
    SecureStorage.setTheme(_stringFromThemeMode(mode));
  }

  String _stringFromThemeMode(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
        return 'system';
      default:
        return 'system';
    }
  }




}