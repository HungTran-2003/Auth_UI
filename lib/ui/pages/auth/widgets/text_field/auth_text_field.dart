import 'package:flutter/material.dart';

import '../../../../../common/app_colors.dart';
import '../../../../../common/app_text_style.dart';

class AuthTextField extends StatelessWidget {
  final String? labelText;
  final bool obscureText;
  final TextEditingController controller;

  const AuthTextField({
    super.key,
    required this.labelText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: AppTextStyle.blacks16Medium,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.secondary,
        contentPadding: EdgeInsets.only(
          left: 20.0,
          right: 35.0,
          top: 20.0,
          bottom: 20.0,
        ),
        floatingLabelStyle: AppTextStyle.blacks16,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColors.primary, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 2.0),
        ),
        hint: Text(labelText ?? ''),
      ),
      obscureText: obscureText,
    );
  }
}
