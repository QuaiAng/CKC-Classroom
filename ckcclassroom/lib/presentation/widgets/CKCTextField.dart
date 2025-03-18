import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Ckctextfield extends StatelessWidget {
  final String hintText;
  const Ckctextfield({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Appcolors.placeholderColor, width: 0.5),
            borderRadius: BorderRadius.circular(4.0), // Bo góc
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Appcolors.primaryColor, width: 1), // Viền khi focus
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintText: hintText,
          hintStyle: Appstyles.textStyle1(
              fs: 15, fw: Appstyles.Regular, clr: Appcolors.placeholderColor)),
    );
  }
}
