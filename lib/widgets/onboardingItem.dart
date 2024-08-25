import 'package:flutter/material.dart';
import 'package:smm/utils/helpers.dart';
import 'package:smm/utils/sizes.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.defaultPadding),
      child: Column(
        children: [
          Image(
            width: HelperFunctions.getScreenWidth(context),
            height: HelperFunctions.getScreenHeight(context) * 0.55,
            image: AssetImage(image),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium!,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 17),
          ),
          const SizedBox(
            height: 20,
          ),
          /*Obx(
            () => DropdownButton<ThemeMode>(
              value: themeController.themeM.value,
              items: const [
                DropdownMenuItem(
                  child: Text('System Theme'),
                  value: ThemeMode.system,
                ),
                DropdownMenuItem(
                  child: Text('Light Theme'),
                  value: ThemeMode.light,
                ),
                DropdownMenuItem(
                  child: Text('Dark Theme'),
                  value: ThemeMode.dark,
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  themeController.setThemeMode(value);
                }
              },
            ),
          ),*/
        ],
      ),
    );
  }
}
