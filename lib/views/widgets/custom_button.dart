import 'package:flutter/material.dart';

import '../../consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLodaing = false});
  final void Function()? onTap;
  final bool isLodaing;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
            color: kPrimeryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: isLodaing
                ? const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
