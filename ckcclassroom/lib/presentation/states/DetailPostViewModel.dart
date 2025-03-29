import 'package:ckcclassroom/presentation/widgets/CommentInstance.dart';
import 'package:ckcclassroom/presentation/widgets/WriteCommentBox.dart';
import 'package:ckcclassroom/res/colors.dart';
import 'package:flutter/material.dart';

class Detailpostviewmodel extends ChangeNotifier {
  bool isFavorite = false;
  void onFavoriteTap() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  Future showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Appcolors.backgroundColor, // Để tránh bị mất bo góc
      barrierColor: Colors.black87.withOpacity(0.3),
      builder: (context) => FractionallySizedBox(
        heightFactor: 0.8, // Chiếm 80% chiều cao màn hình
        widthFactor: 1,
        child: Scaffold(
            backgroundColor: Colors.transparent, // Tránh che mất bo góc
            body: Container(
              decoration: BoxDecoration(
                color: Appcolors.backgroundColor, // Nền của nội dung
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding:
                  EdgeInsets.only(top: 30, right: 15, left: 15, bottom: 15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    6,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Commentinstance(),
                    ),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Writecommentbox(
              onAddTap: () {},
              onSendtap: () {},
            )),
      ),
    );
  }
}
