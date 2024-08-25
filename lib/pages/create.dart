// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/createController.dart';
import 'package:smm/utils/images.dart';
import 'package:smm/utils/myColors.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/backIcon.dart';
import 'package:smm/widgets/myAppBar.dart';
import 'package:smm/widgets/myButton.dart';
import 'package:smm/widgets/myTextField.dart';

class CreateScreen extends StatelessWidget {
  CreateScreen({super.key});

  final controller = Get.find<CreateController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: Get.height - Sizes.defaultPadding * 10,
      child: Obx(
        () => PageView(
          controller: controller.pageController,
          onPageChanged: controller.updateCurrentIndex,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                MyAppBar(
                  showBackButton: false,
                  title: Text('New Post'),
                  centerTitle: true,
                  leadingIcon: Icons.close,
                  onLeadingPressed: () => controller.exitCreate(),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: IconBackground(
                        icon: Icons.arrow_right_alt_sharp,
                        size: 27,
                        onTap: () => controller.nextPage(),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Sizes.defaultPadding,
                  ),
                  width: Get.width,
                  height: Get.height / 2.5,
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Images',
                        style: Get.textTheme.headlineSmall,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () => controller.isMultiple.toggle(),
                            icon: Icon(
                              Icons.select_all_rounded,
                              color: controller.isMultiple.value
                                  ? Get.theme.primaryColor
                                  : Get.isDarkMode
                                      ? lightBg
                                      : darkBg,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(
                        bottom: Sizes.defaultPadding,
                        left: Sizes.defaultPadding,
                        right: Sizes.defaultPadding),
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 20,
                      runSpacing: 20,
                      children: List.generate(
                        20,
                        (index) {
                          var isSelected =
                              controller.selectedImages.contains(index);
                          var i = controller.selectedImages.indexOf(index);
                          return GestureDetector(
                            onTap: controller.isMultiple.value
                                ? () => controller.selectImage(index)
                                : null,
                            child: Stack(
                              children: [
                                Container(
                                  width: Get.width / 3 - 27,
                                  height: Get.width / 3 - 27,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                isSelected
                                    ? Positioned(
                                        right: 10,
                                        top: 10,
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Get
                                                .theme.scaffoldBackgroundColor,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            border: Border.all(
                                              color: Get.isDarkMode
                                                  ? lightBg
                                                  : darkBg,
                                              width: 2,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              (i + 1).toString(),
                                            ),
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                MyAppBar(
                  showBackButton: true,
                  title: Text('New Post'),
                  centerTitle: true,
                  onBack: () => controller.previousPage(),
                  stopBack: true,
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height / 3.5,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ...List.generate(
                                3,
                                (index) => Container(
                                  margin: EdgeInsets.only(
                                    left: Sizes.defaultPadding,
                                  ),
                                  width: Get.width / 1.5,
                                  height: Get.height / 3.5,
                                  decoration: BoxDecoration(
                                    color: Get.theme.primaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Sizes.defaultPadding,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Sizes.defaultPadding),
                          child: MyTextField(
                            hint: 'Write a caption or description',
                            label: 'Caption',
                            showLabel: false,
                            keyboardType: TextInputType.multiline,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Sizes.defaultPadding),
                          child: Text(
                            'Select platforms to post on',
                            style: Get.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Sizes.defaultPadding),
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              ...List.generate(
                                5,
                                (index) {
                                  var isSelected = controller.selectedPlatforms
                                      .contains(index);
                                  return GestureDetector(
                                    onTap: () =>
                                        controller.selectPlatform(index),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: Get.width / 3 - 80,
                                          height: Get.width / 3 - 80,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[300],
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              Images.google_icon,
                                              width: 35,
                                            ),
                                          ),
                                        ),
                                        isSelected
                                            ? Positioned(
                                                right: 10,
                                                top: 10,
                                                left: 10,
                                                bottom: 10,
                                                child: Container(
                                                  width: Get.width / 3 - 100,
                                                  height: Get.width / 3 - 100,
                                                  decoration: BoxDecoration(
                                                    color: Get.theme
                                                        .scaffoldBackgroundColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    border: Border.all(
                                                      color: Get.isDarkMode
                                                          ? lightBg
                                                          : darkBg,
                                                      width: 2,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Get.isDarkMode
                                                          ? lightBg
                                                          : darkBg,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : SizedBox(),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Get.theme.scaffoldBackgroundColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.defaultPadding,
                    vertical: Sizes.defaultPadding,
                  ),
                  width: Get.width,
                  child: MyButton(
                    child: Text('Post'),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
