import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileItemTile extends StatelessWidget {
  const ProfileItemTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});
  final IconData icon;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      splashColor: Theme.of(context).primaryColor.withOpacity(0.1),
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Theme.of(context).primaryColor),
      title: Text(title),
      onTap: onTap,
      horizontalTitleGap: 10,
      trailing: Icon(Icons.arrow_right, color: Theme.of(context).primaryColor),
    );
  }
}
