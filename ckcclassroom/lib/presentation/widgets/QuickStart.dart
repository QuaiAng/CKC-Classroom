import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Quickstart extends StatelessWidget {
  final Color backgroundColor;
  final String content;
  final IconData icon;
  const Quickstart(
      {super.key,
      required this.backgroundColor,
      required this.content,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [Appcolors.backgroundColor, Appcolors.primaryColor],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          border: Border.all(color: Appcolors.placeholderColor, width: 0.5),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              content,
              softWrap: true,
              textAlign: TextAlign.center,
              style: Appstyles.textStyle1(
                  fs: Appsizes.medium,
                  clr: Appcolors.black,
                  fw: Appstyles.Regular),
            ),
            Icon(
              icon,
              color: Appcolors.black,
            )
          ],
        ),
      ),
    );
  }
}
