import 'package:ckcclassroom/app_router.dart';
import 'package:ckcclassroom/presentation/widgets/Post.dart';
import 'package:ckcclassroom/res/colors.dart';
import 'package:flutter/material.dart';

class Detailclassscreen extends StatelessWidget {
  const Detailclassscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightGray,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Post(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.detailPost);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
