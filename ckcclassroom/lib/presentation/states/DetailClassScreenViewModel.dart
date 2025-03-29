import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Detailclassscreenviewmodel extends ChangeNotifier {
  Future<void> openFile() async {
    String fileUrl =
        "https://drive.google.com/file/d/12rYLC5Jx-9ouXlQk98DWmu9lsiZjLGsX/view";
    final Uri url = Uri.parse(fileUrl);
    if (await launchUrl(url, mode: LaunchMode.externalApplication) == false) {
      throw 'Không thể mở file: $fileUrl';
    }
  }

  void showPopupMenu(BuildContext context, Offset position) async {
    //final RenderBox overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox;
    await showMenu(
      color: Colors.white,
      context: context,
      position: RelativeRect.fromLTRB(position.dx, position.dy, 0, 0),
      items: <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'view',
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 250), // Giới hạn chiều rộng
            child: Row(
              children: [
                const Icon(Icons.image_outlined),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                    'Xem ảnh đại diện Xem ảnh đại diện Xem ảnh đại diện',
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Appstyles.textStyle1(
                        fs: Appsizes.large, fw: Appstyles.Regular),
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: 'upload',
          child: Row(
            children: [
              const Icon(Icons.file_upload_outlined),
              SizedBox(width: 10),
              Text(
                'Tải lên từ thư viện',
                style: Appstyles.textStyle1(
                    fs: Appsizes.large, fw: Appstyles.Regular),
              ),
            ],
          ),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) {
        if (value == 'view') {
          //xem ảnh đại diện
        } else if (value == 'upload') {
          //tải ảnh lên
        }
      }
    });
  }
}
