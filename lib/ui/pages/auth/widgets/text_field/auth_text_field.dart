import 'package:auth_ui/utils/app_validator.dart';
import 'package:flutter/material.dart';

import '../../../../../common/app_colors.dart';
import '../../../../../common/app_text_style.dart';

class AuthTextField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextEditingController? passwordController;

  const AuthTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0),
        ),
        hint: Text(hintText ?? ''),
      ),
      obscureText: obscureText,
      validator: (value) {
        String? s = AppValidator.validateEmpty(value);
        if (s == null) {
          if (hintText == 'Email') {
            s = AppValidator.validateEmail(value);
          } else if (hintText == 'Password') {
            s = AppValidator.validatePassword(value);
          } else if (hintText == 'Confirm Password') {
            s = AppValidator.validateConfirmPassword(
              value,
              passwordController?.text,
            );
          }
        }
        return s;
      },
    );
  }
}
