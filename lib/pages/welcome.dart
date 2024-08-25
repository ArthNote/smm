// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/utils/helpers.dart';
import 'package:smm/utils/images.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/myButton.dart';
import 'package:smm/widgets/myOutlineButton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(Sizes.defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(
                    Get.isDarkMode ? Images.welcomeDark : Images.welcomeLight),
                height: HelperFunctions.getScreenHeight(context) * 0.45,
              ),
              Column(
                children: [
                  Text(
                    'Connect & Share Seamlessly',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Effortlessly link your SM accounts, capture memories, and share them with your followers all from one place.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: MyOutlineButton(
                      child: Text("Sign In"),
                      onPressed: () {
                        Get.toNamed('/signin');
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MyButton(
                      child: Text("Sign Up"),
                      onPressed: () {
                        Get.toNamed('/signup');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
