// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/accountsController.dart';
import 'package:smm/utils/images.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/myAppBar.dart';

class AccountsScreen extends StatelessWidget {
  AccountsScreen({super.key});

  final controller = Get.isRegistered<AccountsController>()
      ? Get.find<AccountsController>()
      : Get.put(AccountsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackButton: false,
        title: Text(
          'Accounts',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.toggleSheet(),
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
        child: ListView(
          padding: const EdgeInsets.only(bottom: Sizes.defaultPadding),
          children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                //LEADING image
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Theme.of(context).cardColor,
                  backgroundImage: AssetImage(Images.google_icon),
                ),
                tileColor: Theme.of(context).cardColor,
                title: Text('Account $index'),
                subtitle: Text('Account $index username'),
                trailing: IconButton(
                  splashRadius: 20,
                  color: Theme.of(context).primaryColor,
                  splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
