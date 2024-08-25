import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smm/utils/myColors.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/myAppBar.dart';
import 'package:smm/widgets/myButton.dart';
import 'package:smm/widgets/profileItemTile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final GetStorage storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    bool isDark = Get.isDarkMode;
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MyAppBar(
                  showBackButton: false,
                ),
                const SizedBox(height: 25),
                CircleAvatar(
                  radius: 60,
                  child: Icon(
                    Icons.person,
                    color: isDark ? darkBg : lightBg,
                    size: 50,
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                const SizedBox(height: 10),
                Text(
                  'name',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 25),
                MyButton(
                  child: const Text('Edit Profile'),
                  onPressed: () => Get.toNamed('/editProfile'),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.defaultPadding),
                  child: Column(
                    children: [
                      Divider(
                        color: Theme.of(context).dividerColor,
                        thickness: 0.5,
                      ),
                      ProfileItemTile(
                        icon: Icons.settings,
                        title: 'Settings',
                        onTap: () => Get.toNamed('/settings'),
                      ),
                      ProfileItemTile(
                        icon: Icons.lock,
                        title: 'Change Password',
                        onTap: () => {},
                      ),
                      Divider(
                        color: Theme.of(context).dividerColor,
                        thickness: 0.5,
                      ),
                      ProfileItemTile(
                        icon: Icons.support,
                        title: 'Help & Support',
                        onTap: () => {},
                      ),
                      ProfileItemTile(
                        icon: Icons.logout,
                        title: 'Sign Out',
                        onTap: () => Get.offAllNamed('/signin'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
