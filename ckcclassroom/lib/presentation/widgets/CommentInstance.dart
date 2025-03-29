import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Commentinstance extends StatelessWidget {
  const Commentinstance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Appcolors.backgroundColor,
          border: Border.all(color: Appcolors.placeholderColor),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/avt.png"),
              backgroundColor: Colors.grey[200],
            ),
            title: Text(
              "Lê Văn Giảng Viên",
              style: Appstyles.textStyle1(
                  fs: Appsizes.large, fw: Appstyles.Medium),
            ),
            subtitle: Text(
              "19/03/2025",
              style: Appstyles.textStyle1(
                  fs: Appsizes.medium,
                  fw: Appstyles.Regular,
                  clr: Appcolors.placeholderColor),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.thumb_up_outlined),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.thumb_down_outlined),
              ],
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley ",
            style: Appstyles.textStyle1(
                fs: Appsizes.medium,
                fw: Appstyles.Regular,
                clr: Appcolors.placeholderColor),
          ),
        ],
      ),
    );
  }
}
