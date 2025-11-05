
import 'package:auth_ui/common/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AppShapeDecoration extends StatelessWidget {
  final double size;
  final Color? color;
  final BoxShape shape;
  final BoxBorder? boxBorder;

  const AppShapeDecoration({
    super.key,
    required this.size,
    this.color,
    this.shape = BoxShape.rectangle,
    this.boxBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color ?? AppColors.secondary,
        shape: shape,
        border: boxBorder,
      ),
    );
  }
}