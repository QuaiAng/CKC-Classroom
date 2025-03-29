import 'package:ckcclassroom/presentation/states/DetailClassScreenViewModel.dart';
import 'package:ckcclassroom/presentation/widgets/CommentTextField.dart';
import 'package:ckcclassroom/presentation/widgets/FileInstance.dart';
import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final detailClassViewModel =
        Provider.of<Detailclassscreenviewmodel>(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Appcolors.backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: ListTile(
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
                      trailing: InkWell(
                        onTapDown: (details) {
                          detailClassViewModel.showPopupMenu(
                              context, details.globalPosition);
                        },
                        child: Icon(Icons.keyboard_arrow_down_rounded),
                      ),
                    ),
                  ),
                  Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz_rounded)))
                ],
              ),
              Text(
                "The classroom course provided clear explanations and engaging activities The classroom course provided clear explanations and engaging activities The classroom course provided clear explanations and engaging activities The classroom course provided clear explanations and engaging activities The classroom course provided clear explanations and engaging activities...",
                style: Appstyles.textStyle1(
                    fs: Appsizes.medium, fw: FontWeight.normal),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Fileinstance(
                  fileName: "The_classroom_demo_file.pdf",
                  onTap: () async {
                    detailClassViewModel.openFile();
                  },
                ),
              ),
              Commenttextfield(
                onAttachedTap: () {},
                onSendTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
