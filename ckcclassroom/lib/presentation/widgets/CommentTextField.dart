import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Commenttextfield extends StatelessWidget {
  const Commenttextfield(
      {super.key, required this.onSendTap, required this.onAttachedTap});
  final VoidCallback onSendTap;
  final VoidCallback onAttachedTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Appcolors.placeholderColor),
          borderRadius: BorderRadius.circular(36)),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Nhập phản hồi...",
                  hintStyle: Appstyles.textStyle1(
                    fs: Appsizes.small,
                    clr: Appcolors.placeholderColor,
                  ),
                  contentPadding: EdgeInsets.only(bottom: 4)),
            ),
          ),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  IconButton(
                      onPressed: onAttachedTap,
                      icon: Icon(
                        Icons.add,
                        weight: 100,
                        size: 30,
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: onSendTap,
                    child: Icon(
                      Icons.send,
                      weight: 10,
                      color: Appcolors.primaryColor,
                      size: 30,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
