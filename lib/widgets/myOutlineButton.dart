// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  MyOutlineButton({super.key, required this.child, required this.onPressed});
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
