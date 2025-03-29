import 'package:ckcclassroom/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appstyles {
  static FontWeight Regular = FontWeight.w400;
  static FontWeight Medium = FontWeight.w600;
  // static PinTheme errorPinTheme = PinTheme(
  //   width: 30.sp,
  //   height: 30.sp,
  //   decoration: BoxDecoration(
  //     color: Colors.white,
  //     borderRadius: BorderRadius.circular(8),
  //     border: Border.all(color: Colors.red, width: 1),
  //   ),
  // );

  // static PinTheme defaultPinTheme = PinTheme(
  //   width: 30.sp,
  //   height: 30.sp,
  //   decoration: BoxDecoration(
  //     color: Colors.white,
  //     borderRadius: BorderRadius.circular(8),
  //     border: Border.all(color: AppColors.primaryColor, width: 1),
  //   ),
  // );

  static OutlineInputBorder textboxStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: Appcolors.placeholderColor,
      width: 0.8,
    ),
  );

  static BoxDecoration isListClassesSelected = BoxDecoration(
      color: Appcolors.primaryColor, borderRadius: BorderRadius.circular(12));

  static BoxDecoration isListClassesNotSelected = BoxDecoration(
      color: Color(0xFFEEEEEE),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)));

  static BoxDecoration isListTasksSelected = BoxDecoration(
      color: Appcolors.primaryColor, borderRadius: BorderRadius.circular(12));

  static BoxDecoration isListTasksNotSelected = BoxDecoration(
      color: Color(0xFFEEEEEE),
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(12), bottomRight: Radius.circular(12)));

  static OutlineInputBorder errorTextboxStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: Colors.red,
      width: 0.8,
    ),
  );

  static TextStyle textStyle1(
          {double fs = 10,
          Color clr = Colors.black,
          FontWeight fw = FontWeight.normal}) =>
      GoogleFonts.inter(
          textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: fs,
              fontWeight: fw,
              color: clr));
}
