import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Buttonlogin extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  const Buttonlogin(
      {super.key, required this.onPressed, required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 55,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              foregroundColor: Appcolors.backgroundColor,
              backgroundColor: Appcolors.primaryColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  content,
                  style: Appstyles.textStyle1(
                      fs: 15,
                      fw: FontWeight.bold,
                      clr: Appcolors.backgroundColor),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Appcolors.backgroundColor,
                )
              ],
            ),
          )),
    );
  }
}
