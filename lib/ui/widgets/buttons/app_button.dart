import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';
import '../../../common/app_text_style.dart';

class AppButton extends StatefulWidget {
  final VoidCallback onPress;
  final String? text;

  const AppButton({required this.onPress, required this.text});

  @override
  State<AppButton> createState() => _AppButtonSate();
}

class _AppButtonSate extends State<AppButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (detail) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (detail) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      onTap: widget.onPress,
      child: Container(
        height: _isPressed ? 41 : 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary,
          boxShadow: [
              BoxShadow(
                color: AppColors.buttonShadow,
                blurRadius: 20,
                offset: _isPressed ? Offset(0, 0) : Offset(0, 10),
              ),
          ],
        ),
        child: Text(
          "${widget.text}",
          style: _isPressed? AppTextStyle.whiteS14SemiBold : AppTextStyle.whiteS20SemiBold,
        ),
      ),
    );
  }
}
