// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:smm/controllers/galleryController.dart';
import 'package:smm/utils/myColors.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/myAppBar.dart';
import 'package:smm/widgets/myButton.dart';

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});

  final controller = Get.isRegistered<GalleryController>()
      ? Get.find<GalleryController>()
      : Get.put(GalleryController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: MyAppBar(
          showBackButton: false,
          title: Text(
            'Gallery',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextButton(
                onPressed: () {
                  controller.isGrid.value = true;
                },
                child: Text(
                  'Grid',
                  style: Get.textTheme.bodyLarge!.copyWith(
                    color: controller.isGrid.value
                        ? (Get.isDarkMode ? darkBg : lightBg)
                        : Get.theme.primaryColor,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: controller.isGrid.value
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).scaffoldBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextButton(
                onPressed: () {
                  controller.isGrid.value = false;
                },
                child: Text(
                  'List',
                  style: Get.textTheme.bodyLarge!.copyWith(
                    color: !controller.isGrid.value
                        ? (Get.isDarkMode ? darkBg : lightBg)
                        : Get.theme.primaryColor,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: !controller.isGrid.value
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).scaffoldBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22),
          backgroundColor: Theme.of(context).primaryColor,
          spacing: 10,
          children: [
            SpeedDialChild(
              child: Icon(Icons.image),
              backgroundColor: Theme.of(context).primaryColor,
              label: 'Upload from gallery',
              labelStyle: TextStyle(fontSize: 18.0),
              foregroundColor: Get.isDarkMode ? darkBg : lightBg,
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(Icons.camera_alt),
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Get.isDarkMode ? darkBg : lightBg,
              label: 'Use camera',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
          child: !controller.isGrid.value
              ? ListView(
                  padding: const EdgeInsets.only(bottom: Sizes.defaultPadding),
                  children: List.generate(
                    20,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        onTap: () => controller.toggleSheet(),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: Sizes.defaultPadding),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 20,
                    runSpacing: 20,
                    children: List.generate(
                      20,
                      (index) => GestureDetector(
                        onTap: () => controller.toggleSheet(),
                        child: Container(
                          width: Get.width / 2 - 30,
                          height: Get.width / 2 - 30,
                          decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
