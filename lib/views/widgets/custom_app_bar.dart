import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(flex: 1),
        CustomSearchIcon(),
      ],
    );
  }
}

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          color: const Color.fromARGB(17, 255, 255, 255),
          borderRadius: BorderRadius.circular(16)),
      // color: const Color.fromARGB(78, 255, 255, 255),
      child: const Center(
          child: Icon(
        Icons.search,
        size: 28,
      )),
    );
  }
}
