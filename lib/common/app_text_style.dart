import 'package:flutter/material.dart';

import 'package:auth_ui/common/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  ///Blue
  static final blue = TextStyle(color: AppColors.primary, fontFamily: "Poppins");

  static final blues35 = blue.copyWith(fontSize: 35);
  static final blues35SemiBold = blues35.copyWith(fontWeight: FontWeight.w600);

  ///Black
  static const black = TextStyle(color: AppColors.textBlack, fontFamily: "Poppins");

  //s14
  static final blackS14 = black.copyWith(fontSize: 14);

  //s20
  static final blackS20 = black.copyWith(fontSize: 20);
  static final blackS20SemiBold = blackS20.copyWith(fontWeight: FontWeight.w600);

  ///White

  static const white = TextStyle(color: AppColors.texTWhite, fontFamily: "Poppins");

  //s20
  static final whiteS20 = white.copyWith(fontSize: 20);
  static final whiteS20SemiBold = whiteS20.copyWith(fontWeight: FontWeight.w600);




}