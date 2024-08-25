// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/utils/images.dart';
import 'package:smm/utils/sizes.dart';

class AccountSelectorSheet extends StatelessWidget {
  const AccountSelectorSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(Sizes.defaultPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Select a platform',
                style: Get.textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: Sizes.defaultPadding),
                children: List.generate(
                  20,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      //LEADING image
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        backgroundImage: AssetImage(Images.google_icon),
                      ),
                      tileColor: Get.theme.cardColor,
                      title: Text('Account $index'),
                      trailing: IconButton(
                        splashRadius: 20,
                        color: Theme.of(context).primaryColor,
                        splashColor:
                            Theme.of(context).primaryColor.withOpacity(0.2),
                        icon: Icon(Icons.add_circle_outline),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
