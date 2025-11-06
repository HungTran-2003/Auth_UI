import 'package:flutter/material.dart';

import '../../../../../common/app_colors.dart';

class AuthIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const AuthIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: 24,
      color: AppColors.textBlack,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.buttonBGSecondary),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        minimumSize: WidgetStateProperty.all(const Size(0, 44)),
      ),
    );
  }
}
