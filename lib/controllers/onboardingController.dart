import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //variables
  final PageController pageController = PageController();
  final currentIndex = 0.obs;

  //Update current index when page scroll

  void updateCurrentIndex(int index) {
    currentIndex.value = index;
  }

  //jump to specific dot selected page
  void dotNavigationClick(int index) {
    //jump to page
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  //update current index and jump to next page
  void nextPage() {
    //update current index
    //jump to page
    if (currentIndex.value == 2) {
      Get.toNamed(
        '/welcome',
      );
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and jump to last page
  void skipPage() {
    //update current index
    //jump to page
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
