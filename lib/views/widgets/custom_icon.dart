import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          color: const Color.fromARGB(17, 255, 255, 255),
          borderRadius: BorderRadius.circular(16)),
      // color: const Color.fromARGB(78, 255, 255, 255),
      child: Center(
          child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: 28,
      )),
    );
  }
}
