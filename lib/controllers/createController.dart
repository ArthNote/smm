import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/navigationController.dart';

class CreateController extends GetxController {
  static CreateController get to => Get.find();

  final pageController = PageController();
  final currentIndex = 0.obs;

  final NavigationController navController = Get.find();

  final previousPageValue = 0.obs;

  final isMultiple = false.obs;

  final selectedImages = <int>[].obs;
  final selectedPlatforms = <int>[].obs;

  void exitCreate() {
    navController.selectedIndex.value = previousPageValue.value;
    Get.back();
  }

  void updateCurrentIndex(int index) {
    currentIndex.value = index;
  }

  void nextPage() {
    int page = currentIndex.value + 1;
    pageController.jumpToPage(page);
  }

  void previousPage() {
    int page = currentIndex.value - 1;
    pageController.jumpToPage(page);
  }

  void selectImage(int index) {
    if (selectedImages.contains(index)) {
      selectedImages.remove(index);
    } else {
      selectedImages.add(index);
    }
  }

  void selectPlatform(int index) {
    if (selectedPlatforms.contains(index)) {
      selectedPlatforms.remove(index);
    } else {
      selectedPlatforms.add(index);
    }
  }
}
