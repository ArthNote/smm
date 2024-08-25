// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/onboardingController.dart';
import 'package:smm/utils/images.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/onboardingItem.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    final dark = Get.isDarkMode;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updateCurrentIndex,
              children: [
                OnBoardingItem(
                  title: "Take a picture",
                  description:
                      "Capture your moments effortlessly with our built-in camera.",
                  image: dark ? Images.onboarding1Dark : Images.onboarding1Light,
                ),
                OnBoardingItem(
                  title: "Select Platfroms",
                  description:
                      "Choose your preferred social media platforms for sharing.",
                  image: dark ? Images.onboarding2Dark : Images.onboarding2Light,
                ),
                OnBoardingItem(
                  title: "Upload",
                  description:
                      "Easily upload your photos to multiple platforms with a single tap",
                  image: dark ? Images.onboarding3Dark : Images.onboarding3Light,
                ),
              ],
            ),
            Positioned(
              right: Sizes.defaultPadding,
              child: TextButton(
                onPressed: () => controller.skipPage(),
                style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).primaryColor),
                child: Row(
                  children: [
                    Text('Skip',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: Theme.of(context).primaryColor,
                                )),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Theme.of(context).primaryColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: dark ? Colors.black : Colors.white,
                        size: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: Sizes.defaultPadding + 25,
              left: Sizes.defaultPadding,
              child: SmoothPageIndicator(
                controller: controller.pageController,
                onDotClicked: controller.dotNavigationClick,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Theme.of(context).primaryColor,
                  dotHeight: 10,
                ),
              ),
            ),
            Positioned(
              bottom: Sizes.defaultPadding + 8,
              right: Sizes.defaultPadding,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () => controller.nextPage(),
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: dark ? Colors.black : Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
