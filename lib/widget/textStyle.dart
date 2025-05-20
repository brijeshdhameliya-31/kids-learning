import 'package:flutter/material.dart';
import 'package:kids_learning/widget/colors.dart';

class RegulerTextStyle {
  double fontSize = 20;
  TextStyle init() {
    return TextStyle(fontSize: fontSize);
  }
}

class CustomTextStyle {
  static  TextStyle regular = TextStyle(
    fontSize: 20,
    color: AppColors.text,
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
  );

  static TextStyle medium = TextStyle(
    fontSize: 20,
    color: AppColors.text,
    fontFamily: "WorkSans",
    fontWeight: FontWeight.w500,
  );

  static  TextStyle semibold = TextStyle(
    fontSize: 20,
    color: AppColors.text,
     fontFamily: "WorkSans",
    fontWeight: FontWeight.w600,
  );

  static  TextStyle bold = TextStyle(
    fontSize: 20,
    color: AppColors.text,
     fontFamily: "WorkSans",
    fontWeight: FontWeight.w800,
  );
}

// class PoppinsCustomTextStyle {
//   static  TextStyle regular = TextStyle(
//     fontSize: 20,
//     color: AppColors.text,
//     fontFamily: 'Poppins',
//     fontWeight: FontWeight.w400,
//   );

//   static  TextStyle medium = TextStyle(
//     fontSize: 20,
//     color: AppColors.text,
//     fontFamily: 'Poppins',
//     fontWeight: FontWeight.w500,
//   );

//   static  TextStyle semibold = TextStyle(
//     fontSize: 20,
//     color: AppColors.text,
//     fontFamily: 'Poppins',
//     fontWeight: FontWeight.w600,
//   );

//   static  TextStyle bold = TextStyle(
//     fontSize: 20,
//     color: AppColors.text,
//     fontFamily: 'Poppins',
//     fontWeight: FontWeight.w700,
//   );
// }
