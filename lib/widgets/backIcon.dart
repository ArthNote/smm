import 'package:flutter/material.dart';

class IconBackground extends StatelessWidget {
  const IconBackground({
    Key? key,
    required this.icon,
    required this.onTap,
    this.isTap,
    this.bgColor,
    this.size,
    this.child,
    this.iconColor,
    this.splashColor,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final bool? isTap;
  final Color? bgColor;
  final double? size;
  final Widget? child;
  final Color? iconColor;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        splashColor: splashColor ?? Theme.of(context).primaryColor,
        onTap: isTap ?? true ? onTap : null,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: child ??
              Icon(
                icon,
                size: size ?? 22,
                color: iconColor ?? null,
              ),
        ),
      ),
    );
  }
}

class IconBorder extends StatelessWidget {
  const IconBorder({
    Key? key,
    required this.icon,
    required this.onTap,
    this.bgColor,
    this.size,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final Color? bgColor;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.grey,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            width: 2,
            color: bgColor ?? Theme.of(context).cardColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(
            icon,
            size: size ?? 22,
          ),
        ),
      ),
    );
  }
}
