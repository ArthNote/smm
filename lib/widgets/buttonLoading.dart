import 'package:flutter/material.dart';

class ButtonLoading extends StatelessWidget {
  ButtonLoading({
    super.key,
    this.color,
    this.size,
  });

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? 19,
      height: size ?? 19,
      child: CircularProgressIndicator(
        strokeWidth: 3,
        color: color ?? Colors.white,
      ),
    );
  }
}
