// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/widgets/accountSelectorSheet.dart';

class AccountsController extends GetxController {
  static AccountsController get to => Get.find();

  void toggleSheet() {
    Get.bottomSheet(
      DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.7,
        expand: false,
        builder: (context, scrollController) {
          return AccountSelectorSheet();
        },
      ),
      isScrollControlled: true,
    );
  }
}
