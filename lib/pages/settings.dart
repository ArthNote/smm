
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/themeController.dart';
import 'package:smm/utils/helpers.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/myAppBar.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    bool isDark = Get.isDarkMode;
    return Scaffold(
      body: Column(
        children: [
          const MyAppBar(
            showBackButton: true,
            title: Text('Settings'),
            centerTitle: true,
          ),
          const SizedBox(height: 25),
          Obx(
            () => DropdownMenu(
              initialSelection: themeController.themeM.value,
              width: HelperFunctions.getScreenWidth(context) -
                  (Sizes.defaultPadding * 2),
              label: const Text('Theme Mode'),
              dropdownMenuEntries: const [
                DropdownMenuEntry(
                  value: ThemeMode.system,
                  label: 'System',
                ),
                DropdownMenuEntry(
                  value: ThemeMode.light,
                  label: 'Light',
                ),
                DropdownMenuEntry(
                  value: ThemeMode.dark,
                  label: 'Dark',
                ),
              ],
              onSelected: (value) {
                if (value != null) {
                  themeController.setThemeMode(value);
                }
              },
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
            child: SwitchListTile(
              value: false,
              onChanged: (value) {},
              title: Text(
                'Use biometrics to sign in',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                    color: isDark ? Colors.grey.shade600 : Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 25),
          DropdownMenu(
            initialSelection: 'English',
            width: HelperFunctions.getScreenWidth(context) -
                (Sizes.defaultPadding * 2),
            label: Text('Language'),
            dropdownMenuEntries: const [
              DropdownMenuEntry(
                value: 'English',
                label: 'English',
              ),
              DropdownMenuEntry(
                value: 'French',
                label: 'French',
              ),
            ],
            onSelected: (value) {
              if (value != null) {}
            },
          ),
        ],
      ),
    );
  }
}
