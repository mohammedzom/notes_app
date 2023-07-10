import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class CustomTextFilde extends StatelessWidget {
  const CustomTextFilde(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onsaved,
      this.iniValue});
  final String hint;
  final int maxLines;
  final String? iniValue;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: iniValue,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
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
