import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Fileinstance extends StatelessWidget {
  const Fileinstance({super.key, required this.fileName, required this.onTap});
  final String fileName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Appcolors.black),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/pdf.png',
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  fileName,
                  style: Appstyles.textStyle1(
                      fs: Appsizes.medium,
                      fw: Appstyles.Medium,
                      clr: Appcolors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )),
      ),
    );
  }
}
