import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Colors.white.withOpacity(0.07),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Apply padding around the icon
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, size: 25),
          ),
        ),
      ),
    );
  }
}
