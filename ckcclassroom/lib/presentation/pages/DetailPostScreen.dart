import 'package:ckcclassroom/presentation/states/DetailPostViewModel.dart';
import 'package:ckcclassroom/presentation/widgets/FileInstance.dart';
import 'package:ckcclassroom/presentation/widgets/WriteCommentBox.dart';
import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailpostscreen extends StatelessWidget {
  const Detailpostscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detailPostViewModel = Provider.of<Detailpostviewmodel>(context);
    return Scaffold(
      bottomNavigationBar: Writecommentbox(
        onAddTap: () {},
        onSendtap: () {},
      ),
      backgroundColor: Appcolors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/avt.png"),
                  backgroundColor: Colors.grey[200],
                ),
                title: Text(
                  "Cao Thị Hoài An",
                  style: Appstyles.textStyle1(
                      fs: Appsizes.large, fw: Appstyles.Medium),
                ),
                subtitle: Text(
                  "2 giờ trước",
                  style: Appstyles.textStyle1(
                      fs: Appsizes.medium,
                      fw: Appstyles.Regular,
                      clr: Appcolors.placeholderColor),
                ),
                // trailing: Padding(
                //   padding: const EdgeInsets.only(right: ),
                //   child: InkWell(
                //     onTapDown: (details) {
                //       detailClassViewModel.showPopupMenu(
                //           context, details.globalPosition);
                //     },
                //     child: Icon(Icons.keyboard_arrow_down_rounded),
                //   ),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand."
                  "The classroom course provided clear explanations and engaging activities, making complex topics easier to understand.",
                  style: Appstyles.textStyle1(
                      fs: Appsizes.medium, fw: Appstyles.Regular),
                ),
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Fileinstance(
                      fileName: "fileName.pdf",
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 0.8,
                color: Appcolors.placeholderColor,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        detailPostViewModel.onFavoriteTap();
                      },
                      child: detailPostViewModel.isFavorite
                          ? Icon(
                              Icons.favorite_sharp,
                              color: Colors.red,
                            )
                          : Icon(Icons.favorite_border)),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        detailPostViewModel.showBottomSheet(context);
                      },
                      child: Icon(Icons.chat_bubble_outline_rounded)),
                  // Column(
                  //   // mainAxisSize: MainAxisSize.min,
                  //   children: List.generate(
                  //     6,
                  //     (index) => Commentinstance(),
                  //   ),
                  // )
                ],
              ),
              Divider(
                thickness: 0.8,
                color: Appcolors.placeholderColor,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
