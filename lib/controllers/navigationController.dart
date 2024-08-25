// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/createController.dart';
import 'package:smm/pages/accounts.dart';
import 'package:smm/pages/create.dart';
import 'package:smm/pages/gallery.dart';
import 'package:smm/pages/home.dart';
import 'package:smm/pages/profile.dart';

class NavigationController extends GetxController {
  final selectedIndex = 0.obs;
  final oldValue = 0.obs;


  final screens = [
    HomeScreen(),
    GalleryScreen(),
    Container(),
    AccountsScreen(),
    ProfileScreen(),
  ];

  void toggleSheet() {
    Get.bottomSheet(
      DraggableScrollableSheet(
        initialChildSize: 0.95,
        minChildSize: 0.95,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) {
          return CreateScreen();
        },
      ),
      isScrollControlled: true,
    );
  }
  
}
