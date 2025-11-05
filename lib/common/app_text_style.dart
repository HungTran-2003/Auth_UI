import 'package:flutter/material.dart';

import 'package:auth_ui/common/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  ///Blue
  static final blue = TextStyle(color: AppColors.primary, fontFamily: "Poppins");

  //s14
  static final blues14 = blue.copyWith(fontSize: 14);
  static final blues14SemiBold = blues14.copyWith(fontWeight: FontWeight.w600);

  //s35
  static final blues35 = blue.copyWith(fontSize: 35);
  static final blues35SemiBold = blues35.copyWith(fontWeight: FontWeight.w600);

  //s30
  static final blues30 = blue.copyWith(fontSize: 30);
  static final blues30Bold = blues30.copyWith(fontWeight: FontWeight.w700);


  ///Black
  static const black = TextStyle(color: AppColors.textBlack, fontFamily: "Poppins");

  //s14
  static final blackS14 = black.copyWith(fontSize: 14);
  static final blackS14SemiBold = blackS14.copyWith(fontWeight: FontWeight.w600);
  static final blackS14Medium = blackS14.copyWith(fontWeight: FontWeight.w500);



  //s16
  static final blackS16 = black.copyWith(fontSize: 16);
  static final blackS16SemiBold = blackS16.copyWith(fontWeight: FontWeight.w600);
  static final blackS16Medium = blackS16.copyWith(fontWeight: FontWeight.w500);



  //s20
  static final blackS20 = black.copyWith(fontSize: 20);
  static final blackS20SemiBold = blackS20.copyWith(fontWeight: FontWeight.w600);

  ///White

  static const white = TextStyle(color: AppColors.texTWhite, fontFamily: "Poppins");

  //s14
  static final whiteS14 = white.copyWith(fontSize: 14);
  static final whiteS14SemiBold = whiteS14.copyWith(fontWeight: FontWeight.w600);



  //s20
  static final whiteS20 = white.copyWith(fontSize: 20);
  static final whiteS20SemiBold = whiteS20.copyWith(fontWeight: FontWeight.w600);




}