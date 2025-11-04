import 'package:auth_ui/common/app_colors.dart';
import 'package:auth_ui/common/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      minimumSize: const Size(0, 60),
    );

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset("assets/images/welcome.png", fit: BoxFit.fitWidth),

            const SizedBox(height: 47),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Discover Your\nDream Job here",
                    style: AppTextStyle.blues35SemiBold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 23),
                  Text(
                    "Explore all the existing job roles based on your interest and study major",
                    style: AppTextStyle.blackS14,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 88),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39.0),
              child: Row(
                spacing: 30,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print("Click Login");
                      },
                      style: buttonStyle.copyWith(backgroundColor: WidgetStateProperty.all(AppColors.primary)),
                      child: Text("Login", style: AppTextStyle.whiteS20SemiBold),
                    ),
                  ),

                  Expanded(
                    child: TextButton( onPressed: () {
                      print("Click register");
                    },
                      style: buttonStyle,
                      child: Text("Register", style: AppTextStyle.blackS20SemiBold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
