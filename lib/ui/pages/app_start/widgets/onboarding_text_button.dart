import 'package:auth_ui/common/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/app_text_style.dart';

class OnboardingTextButton extends StatefulWidget {
  final VoidCallback onPress;
  final String? text;

  const OnboardingTextButton({
    super.key,
    required this.onPress,
    required this.text,
  });

  @override
  State<OnboardingTextButton> createState() => _OnboardingTextButtonState();
}

class _OnboardingTextButtonState extends State<OnboardingTextButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      borderRadius: BorderRadius.circular(10),
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
      child: Container(
        height: _isPressed ? 41 : 60,
        alignment: Alignment.center,

        child: Text(
          "${widget.text}",
          style: _isPressed
              ? TextStyle(
                  color: AppColors.textButtonPress,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                )
              : AppTextStyle.blacks20SemiBold,
        ),
      ),
    );
  }
}
