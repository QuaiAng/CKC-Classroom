import 'package:ckcclassroom/presentation/pages/ListClassesScreen.dart';
import 'package:ckcclassroom/presentation/pages/ListTasksScreen.dart';
import 'package:ckcclassroom/presentation/states/DetailClassScreenViewModel.dart';
import 'package:ckcclassroom/presentation/states/HomeScreenViewModel.dart';
import 'package:ckcclassroom/presentation/widgets/QuickStart.dart';
import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/size.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Quickstartobject {
  final Color color;
  final IconData icon;
  const Quickstartobject({required this.color, required this.icon});
}

Map<String, Quickstartobject> mapQuickStart = {
  "Tệp ngoại tuyến": Quickstartobject(
      color: Color(0xFFA1FFD0), icon: Icons.download_done_rounded),
  "Lớp đã lưu trữ":
      Quickstartobject(color: Color(0xFFBCADFF), icon: Icons.storage_rounded),
  "Lịch": Quickstartobject(
      color: Color(0xFFFFB8F8), icon: Icons.calendar_today_rounded),
  "Thư mục của lớp":
      Quickstartobject(color: Color(0xFFFFF4A1), icon: Icons.folder_rounded)
};

List quickStartContent = mapQuickStart.keys.toList();

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeScreenViewModel = Provider.of<Homescreenviewmodel>(context);
    final detailClassViewModel =
        Provider.of<Detailclassscreenviewmodel>(context);
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Appcolors.backgroundColor,
        surfaceTintColor: Appcolors.backgroundColor,
        shadowColor: Colors.grey,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Mở Drawer khi bấm nút menu
            },
          ),
        ),
        title: Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Text(
            "CKC Classroom",
            style:
                Appstyles.textStyle1(fs: Appsizes.large, fw: FontWeight.bold),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Appcolors.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Appcolors.backgroundColor),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         flex: 6,
            //         child: ListTile(
            //           contentPadding: EdgeInsets.all(0),
            //           leading: CircleAvatar(
            //             radius: 30,
            //             backgroundImage: AssetImage("assets/images/avt.png"),
            //             backgroundColor: Colors.grey[200],
            //           ),
            //           title: Text(
            //             "Cao Thị Hoài An",
            //             style: Appstyles.textStyle1(
            //                 fs: Appsizes.large, fw: Appstyles.Medium),
            //           ),
            //           subtitle: Text(
            //             "caohoai.an@edu.vn",
            //             style: Appstyles.textStyle1(
            //                 fs: Appsizes.medium,
            //                 fw: Appstyles.Regular,
            //                 clr: Appcolors.placeholderColor),
            //           ),
            //           trailing: InkWell(
            //             onTapDown: (details) {
            //               detailClassViewModel.showPopupMenu(
            //                   context, details.globalPosition);
            //             },
            //             child: Icon(Icons.keyboard_arrow_down_rounded),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 25, left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: ListTile(
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
                        "caohoai.an@edu.vn",
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Trang chủ",
                  style: Appstyles.textStyle1(fs: Appsizes.medium),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "Cài đặt",
                  style: Appstyles.textStyle1(fs: Appsizes.medium),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: ListTile(
                leading: Icon(Icons.logout_rounded),
                title: Text(
                  "Đăng xuất",
                  style: Appstyles.textStyle1(fs: Appsizes.medium),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Thanh điều hướng có animation
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    /// Thanh nền trượt
                    AnimatedAlign(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      alignment: homeScreenViewModel.isListClasses
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 12,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Appcolors.primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    /// Các nút bấm
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              homeScreenViewModel.setIsListClasses(true);
                            },
                            child: Center(
                              child: AnimatedDefaultTextStyle(
                                duration: Duration(milliseconds: 300),
                                style: Appstyles.textStyle1(
                                  fs: Appsizes.medium,
                                  fw: FontWeight.bold,
                                  clr: homeScreenViewModel.isListClasses
                                      ? Appcolors.backgroundColor
                                      : Appcolors.black,
                                ),
                                child: Text(
                                  "Danh sách lớp học",
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              homeScreenViewModel.setIsListClasses(false);
                            },
                            child: Center(
                              child: AnimatedDefaultTextStyle(
                                duration: Duration(milliseconds: 300),
                                style: Appstyles.textStyle1(
                                  fs: Appsizes.medium,
                                  fw: FontWeight.bold,
                                  clr: !homeScreenViewModel.isListClasses
                                      ? Appcolors.backgroundColor
                                      : Appcolors.black,
                                ),
                                child: Text(
                                  "Công việc chưa xử lý",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Quick Starts
              Text(
                "Quick Starts",
                style: Appstyles.textStyle1(
                    fs: Appsizes.medium, fw: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                        left: (index == 0) ? 0 : 10,
                        right: (index == 3) ? 0 : 10),
                    child: Quickstart(
                        // backgroundColor:
                        //     mapQuickStart[quickStartContent[index]]!.color,
                        backgroundColor: Appcolors.backgroundColor,
                        content: quickStartContent[index],
                        icon: mapQuickStart[quickStartContent[index]]!.icon),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              /// Nội dung có thể trượt giữa 2 màn hình
              SizedBox(
                height: 550,
                child: PageView(
                  controller: homeScreenViewModel.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [Listclassesscreen(), Listtasksscreen()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
