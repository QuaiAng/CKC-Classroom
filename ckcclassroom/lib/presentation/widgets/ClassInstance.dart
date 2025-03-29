import 'package:ckcclassroom/presentation/widgets/CircleAvatarLetter.dart';
import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Classinstance extends StatelessWidget {
  const Classinstance({super.key});

  String cutString(String string) {
    if (string.length < 22) return string;
    return "${string.characters.take(22)}...";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Appcolors.placeholderColor, width: 0.5)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Appcolors.primaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                    height: 90,
                  )),
              Expanded(
                  flex: 6,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        color: Appcolors.backgroundColor,
                        height: 90,
                        alignment: AlignmentDirectional.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Appcolors.primaryColor),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      cutString(
                                          "CĐTH22 DĐE - Lập Trình Di Động"),
                                      overflow: TextOverflow.ellipsis,
                                      style: Appstyles.textStyle1(
                                          fs: Appsizes.large,
                                          clr: Appcolors.backgroundColor,
                                          fw: Appstyles.Medium),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                cutString("Lê Văn Giảng Viên"),
                                overflow: TextOverflow.ellipsis,
                                style: Appstyles.textStyle1(
                                    fs: Appsizes.small,
                                    clr: Appcolors.placeholderColor,
                                    fw: Appstyles.Medium),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -25,
                        top: 22,
                        child: Circleavatarletter(letter: "A", size: 50),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                        color: Appcolors.backgroundColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8))),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: Appsizes.large,
                        )),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
