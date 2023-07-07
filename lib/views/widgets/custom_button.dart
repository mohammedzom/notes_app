import 'package:flutter/material.dart';

import '../../consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
          color: kPrimeryColor, borderRadius: BorderRadius.circular(8)),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
