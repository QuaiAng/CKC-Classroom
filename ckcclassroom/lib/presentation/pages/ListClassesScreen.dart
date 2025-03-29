import 'package:ckcclassroom/presentation/pages/DetailClassScreen.dart';
import 'package:ckcclassroom/presentation/states/HomeScreenViewModel.dart';
import 'package:ckcclassroom/presentation/widgets/ClassInstance.dart';
import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Listclassesscreen extends StatelessWidget {
  const Listclassesscreen({super.key});

  // Biến trạng thái để kiểm soát danh sách mở rộng
  @override
  Widget build(BuildContext context) {
    final homeScreenViewModel = Provider.of<Homescreenviewmodel>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Classes",
          style: Appstyles.textStyle1(fs: Appsizes.medium, fw: FontWeight.bold),
        ),
        const SizedBox(height: 10),

        // Danh sách lớp học
        Flexible(
          child: ListView.builder(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: homeScreenViewModel.isExpanded
                ? 10
                : 5, // Nếu mở rộng thì hiển thị 10 phần tử, ngược lại hiển thị 5
            itemBuilder: (context, index) {
              if (!homeScreenViewModel.isExpanded && index == 4) {
                // Nếu danh sách chưa mở rộng, hiển thị nút mở rộng ở vị trí thứ 5
                return IconButton(
                  onPressed: () {
                    homeScreenViewModel.setIsExpanded(true);
                  },
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  color: Appcolors.black,
                );
              }
              return Padding(
                padding: EdgeInsets.only(
                    bottom: (index == 9) ? 0 : 15), // Padding cho các item
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detailclassscreen(),
                          ));
                    },
                    child: Classinstance()),
              );
            },
          ),
        ),

        // Nếu danh sách đang mở rộng, hiển thị nút thu gọn
        if (homeScreenViewModel.isExpanded)
          Center(
            child: IconButton(
              onPressed: () {
                homeScreenViewModel.setIsExpanded(false);
              },
              icon: const Icon(Icons.keyboard_arrow_up_rounded),
              color: Appcolors.black,
            ),
          ),
      ],
    );
  }
}
