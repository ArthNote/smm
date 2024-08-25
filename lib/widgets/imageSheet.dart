// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/myButton.dart';
import 'package:smm/widgets/myOutlineButton.dart';

class ImageSheet extends StatelessWidget {
  const ImageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: Get.height * 0.4,
            color: Colors.blue,
          ),
          SizedBox(height: 20),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
            child: Text(
              'Picture name',
              style: Get.textTheme.headlineMedium,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
            child: Row(
              children: [
                Text(
                  'Date added:',
                  style: Get.textTheme.titleLarge,
                ),
                SizedBox(width: 10),
                Text(
                  '24 May 2021',
                  style: Get.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
            child: Row(
              children: [
                Text(
                  'Size:',
                  style: Get.textTheme.titleLarge,
                ),
                SizedBox(width: 10),
                Text(
                  '34.5 MB',
                  style: Get.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Sizes.defaultPadding),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: MyButton(
                    child: Text('Delete image'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: Get.width * 0.2,
                  child: MyOutlineButton(
                    child: Icon(
                      Icons.download,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
