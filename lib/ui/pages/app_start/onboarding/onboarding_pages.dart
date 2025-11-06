import 'package:auth_ui/common/app_colors.dart';
import 'package:auth_ui/common/app_text_style.dart';
import 'package:auth_ui/ui/pages/app_start/widgets/onboarding_text_button.dart';
import 'package:auth_ui/ui/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

import '../../../widgets/decoration/app_shape_decoration.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // circle
          Positioned(
            top: -screenHeight * 0.4,
            right: -screenWidth * 0.8,
            child: AppShapeDecoration(
              size: screenHeight * 0.7,
              shape: BoxShape.circle,
            ),
          ),
          // circle (as a line)
          Positioned(
            top: -screenHeight * 0.15,
            right: -screenWidth * 0.14,
            child: AppShapeDecoration(
              size: screenHeight * 0.5,
              shape: BoxShape.circle,
              color: Colors.transparent,
              boxBorder: Border.all(color: AppColors.secondary, width: 3.0),
            ),
          ),

          // square
          Positioned(
            top: screenHeight * 0.7,
            right: screenWidth * 0.8,
            child: AppShapeDecoration(
              size: screenHeight * 0.4,
              color: Colors.transparent,
              boxBorder: Border.all(color: AppColors.secondary, width: 2.0),
            ),
          ),

          //inclined square
          Positioned(
            top: screenHeight * 0.7,
            right: screenWidth * 0.75,
            child: Transform.rotate(
              angle: 0.5,
              child: AppShapeDecoration(
                size: screenHeight * 0.4,
                color: Colors.transparent,
                boxBorder: Border.all(color: AppColors.secondary, width: 2.0),
              ),
            ),
          ),

          ListView(
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
                      style: AppTextStyle.blacks14,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 88),

              Padding(
                padding: const EdgeInsets.only(
                  left: 39.0,
                  right: 39.0,
                  bottom: 88.0,
                ),
                child: Row(
                  spacing: 30,
                  children: [
                    Expanded(
                      child: AppButton(
                        onPress: () {
                          Navigator.pushReplacementNamed(context, "/sign_in");
                        },
                        text: "Sign in",
                      ),
                    ),
                    Expanded(
                      child: OnboardingTextButton(
                        onPress: () {
                          Navigator.pushReplacementNamed(context, "/sign_up");
                        },
                        text: "Register",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
