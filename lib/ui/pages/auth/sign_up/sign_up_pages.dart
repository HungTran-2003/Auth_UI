import 'package:auth_ui/common/app_colors.dart';
import 'package:auth_ui/common/app_text_style.dart';
import 'package:auth_ui/ui/widgets/buttons/app_button.dart';
import 'package:auth_ui/ui/widgets/decoration/app_shape_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/buttons/auth_icon_button.dart';
import '../widgets/text_field/auth_text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: -screenHeight * 0.4,
              right: -screenWidth * 0.8,
              child: AppShapeDecoration(
                size: screenHeight * 0.7,
                shape: BoxShape.circle,
              ),
            ),

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

            Positioned(
              top: screenHeight * 0.7,
              right: screenWidth * 0.8,
              child: AppShapeDecoration(
                size: screenHeight * 0.4,
                color: Colors.transparent,
                boxBorder: Border.all(color: AppColors.secondary, width: 2.0),
              ),
            ),

            Positioned(
              top: screenHeight * 0.7,
              right: screenWidth * 0.8,
              child: Transform.rotate(
                angle: 0.3,
                child: AppShapeDecoration(
                  size: screenHeight * 0.4,
                  color: Colors.transparent,
                  boxBorder: Border.all(color: AppColors.secondary, width: 2.0),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(top: 97, left: 31, right: 31),
              height: screenHeight,
              width: screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      spacing: 26,
                      children: [
                        Text("Create Account", style: AppTextStyle.blues30Bold),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 51.0),
                          child: Text(
                            "Create an account so you can explore all the existing jobs",
                            style: AppTextStyle.blacks14Medium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 53.0),
                    AuthTextField(
                      labelText: "Email",
                      obscureText: false,
                      controller: _emailController,
                    ),
                    const SizedBox(height: 26.0),
                    AuthTextField(
                      labelText: "Password",
                      obscureText: true,
                      controller: _passwordController,
                    ),
                    const SizedBox(height: 26.0),
                    AuthTextField(
                      labelText: "Confirm Password",
                      obscureText: true,
                      controller: _confirmPasswordController,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Expanded(
                            child: AppButton(
                              text: "Sign Up",
                              onPress: () {
                                print("Login");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          Navigator.pushReplacementNamed(context, "/sign_in");
                        }
                      },
                      child: Text(
                        "Already have an account",
                        style: AppTextStyle.blacks14SemiBold,
                      ),
                    ),
                    const SizedBox(height: 65),
                    Text("Or continue with", style: AppTextStyle.blues14SemiBold),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 82.0),
                      child: Row(
                        spacing: 10,
                        children: [
                          Expanded(
                            child: AuthIconButton(
                              icon: SvgPicture.asset(
                                'assets/vectors/icons8_google.svg',
                                width: 24,
                                height: 24,
                              ),
                              onPressed: () {
                                print("Google");
                              },
                            ),
                          ),
                
                          Expanded(
                            child: AuthIconButton(
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                print("facebook");
                              },
                            ),
                          ),
                
                          Expanded(
                            child: AuthIconButton(
                              icon: Icon(Icons.apple),
                              onPressed: () {
                                print("facebook");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
