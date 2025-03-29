import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Writecommentbox extends StatelessWidget {
  const Writecommentbox(
      {super.key, required this.onAddTap, required this.onSendtap});
  final VoidCallback onAddTap;
  final VoidCallback onSendtap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
          // padding: EdgeInsets.only(left: 10, top: 3),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              border:
                  Border.all(color: Appcolors.placeholderColor, width: 0.6)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Nhập phản hồi...",
                        hintStyle: Appstyles.textStyle1(
                            fs: Appsizes.medium,
                            fw: Appstyles.Regular,
                            clr: Appcolors.placeholderColor)),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: onAddTap,
                          child: Icon(
                            Icons.add_rounded,
                          ),
                        ),
                        InkWell(
                          onTap: onSendtap,
                          child: Icon(
                            Icons.send_rounded,
                            color: Appcolors.primaryColor,
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
