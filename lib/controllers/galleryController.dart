// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/imageSheet.dart';

class GalleryController extends GetxController {
  static GalleryController get to => Get.find();

  var isGrid = true.obs;

  void toggleSheet() {
    Get.bottomSheet(
      DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.7,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: ImageSheet(),
          );
        },
      ),
      isScrollControlled: true,
    );
  }
}
