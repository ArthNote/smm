// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/createController.dart';

import '../controllers/navigationController.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});
  final controller = Get.isRegistered<NavigationController>()
      ? Get.find<NavigationController>()
      : Get.put(NavigationController());
  final createController = Get.isRegistered<CreateController>()
      ? Get.find<CreateController>()
      : Get.put(CreateController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) {
            controller.oldValue.value = controller.selectedIndex.value;
            createController.previousPageValue.value =
                controller.selectedIndex.value;
            controller.selectedIndex.value = value;
            if (value == 2) {
              controller.toggleSheet();
            }
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.dashboard_outlined),
              label: 'Dashboard',
            ),
            NavigationDestination(
              icon: Icon(Icons.image_outlined),
              label: 'Gallery',
            ),
            NavigationDestination(
              icon: Icon(Icons.add),
              label: 'Create',
            ),
            NavigationDestination(
              icon: Icon(Icons.group_outlined),
              label: 'Accounts',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
        body: controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}
