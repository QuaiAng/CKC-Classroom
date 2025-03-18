import 'package:ckcclassroom/presentation/widgets/ButtonLogin.dart';
import 'package:ckcclassroom/presentation/widgets/CKCTextField.dart';
import 'package:ckcclassroom/res/colors.dart';
import 'package:ckcclassroom/res/styles.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 31, right: 31, top: 68),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CKC\nClassroom",
                textAlign: TextAlign.left,
                style: Appstyles.textStyle1(
                    fs: 48, fw: FontWeight.bold, clr: Color(0xFF494949)),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "Welcome to CKC Classroom",
                textAlign: TextAlign.left,
                style: Appstyles.textStyle1(
                    fs: 18,
                    fw: FontWeight.w600,
                    clr: Appcolors.placeholderColor),
              ),
              SizedBox(
                height: 17,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "You forgot password?",
                  textAlign: TextAlign.left,
                  style: Appstyles.textStyle1(
                      fs: 18, fw: FontWeight.w600, clr: Appcolors.primaryColor),
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Ckctextfield(
                hintText: "Email",
              ),
              SizedBox(
                height: 29,
              ),
              Ckctextfield(
                hintText: "Password",
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: Buttonlogin(onPressed: () {}, content: "LOGIN"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
