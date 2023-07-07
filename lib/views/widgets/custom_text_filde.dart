import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class CustomTextFilde extends StatelessWidget {
  const CustomTextFilde({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimeryColor,
      decoration: InputDecoration(
          border: bulideBorder(),
          enabledBorder: bulideBorder(),
          focusedBorder: bulideBorder(kPrimeryColor),
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimeryColor)),
    );
  }

  OutlineInputBorder bulideBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
