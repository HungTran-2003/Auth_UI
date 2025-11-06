import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';
import '../../../common/app_text_style.dart';

class AppButton extends StatefulWidget {
  final VoidCallback onPress;
  final String? text;

  const AppButton({super.key, required this.onPress, required this.text});

  @override
  State<AppButton> createState() => _AppButtonSate();
}

class _AppButtonSate extends State<AppButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.blue,
      highlightColor: Colors.blue,
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
              color: _isPressed ? Colors.transparent : AppColors.primary,
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Text(
          "${widget.text}",
          style: _isPressed
              ? AppTextStyle.whites14SemiBold
              : AppTextStyle.whites20SemiBold,
        ),
      ),
    );
  }
}
