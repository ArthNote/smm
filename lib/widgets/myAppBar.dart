import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/widgets/backIcon.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(
      {super.key,
      this.title,
      required this.showBackButton,
      this.leadingIcon,
      this.centerTitle,
      this.actions,
      this.stopBack,
      this.onBack,
      this.onLeadingPressed});

  final Widget? title;
  final bool showBackButton;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final Function()? onLeadingPressed;
  final bool? centerTitle;
  final bool? stopBack;
  final Function()? onBack;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: showBackButton
              ? 26
              : leadingIcon != null
                  ? 26
                  : 10,
          right: 26),
      child: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 40,
        centerTitle: centerTitle,
        leading: showBackButton
            ? Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: IconBackground(
                  icon: Icons.arrow_back,
                  onTap: stopBack ?? false
                      ? () {
                          if (onBack != null) {
                            onBack!();
                          } else {
                            return;
                          }
                        }
                      : () {
                          Get.back();
                        },
                ),
              )
            : leadingIcon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: IconBackground(
                      icon: leadingIcon!,
                      onTap: onLeadingPressed ??
                          () {
                            Get.back();
                          },
                    ),
                  )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
