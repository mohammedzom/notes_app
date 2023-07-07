import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(flex: 1),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;
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
          child: Icon(
        icon,
        size: 28,
      )),
    );
  }
}
