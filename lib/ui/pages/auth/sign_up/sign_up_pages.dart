import 'package:auth_ui/common/app_colors.dart';
import 'package:auth_ui/common/app_text_style.dart';
import 'package:auth_ui/ui/widgets/decoration/app_shape_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();


    final buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );

    return Scaffold(
      body: Container(
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
                          style: AppTextStyle.blackS14Medium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 53.0),
                  TextField(
                    controller: _emailController,
                    style: AppTextStyle.blackS16Medium,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.secondary,
                      contentPadding: EdgeInsets.only(
                        left: 20.0,
                        right: 35.0,
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      floatingLabelStyle: AppTextStyle.blackS16,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      label: Text("Email"),
                    ),
                  ),
                  const SizedBox(height: 26.0),
                  TextField(
                    controller: _passwordController,
                    style: AppTextStyle.blackS16Medium,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.secondary,
                      contentPadding: EdgeInsets.only(
                        left: 20.0,
                        right: 35.0,
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      floatingLabelStyle: AppTextStyle.blackS16,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      label: Text("Password"),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 26.0),
                  TextField(
                    controller: _confirmPasswordController,
                    style: AppTextStyle.blackS16Medium,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.secondary,
                      contentPadding: EdgeInsets.only(
                        left: 20.0,
                        right: 35.0,
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      floatingLabelStyle: AppTextStyle.blackS16,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      label: Text("Confirm Password"),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: buttonStyle.copyWith(
                            minimumSize: WidgetStateProperty.all(
                              const Size(0, 60),
                            ),
                            backgroundColor: WidgetStateProperty.all(
                              AppColors.primary,
                            ),
                            elevation: WidgetStateProperty.all(10.0),
                          ),
                          onPressed: () {
                            print("Sign In");
                          },
                          child: Text(
                            "Sign Up",
                            style: AppTextStyle.whiteS20SemiBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      if(Navigator.canPop(context)){
                        Navigator.pop(context);
                      } else {
                        Navigator.pushReplacementNamed(context, "/sign_in");
                      }
                    },
                    child: Text(
                      "Already have an account",
                      style: AppTextStyle.blackS14SemiBold,
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
                          child: IconButton(
                            onPressed: () {
                              print("Google");
                            },
                            icon: SvgPicture.asset(
                              'assets/vectors/icons8_google.svg',
                              width: 24,
                              height: 24,
                            ),
                            iconSize: 24,
                            color: AppColors.textBlack,
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                AppColors.buttonBGSecondary,
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              minimumSize: WidgetStateProperty.all(
                                const Size(0, 44),
                              ),

                            ),
                          ),
                        ),

                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              print("Fake book");
                            },
                            icon: Icon(Icons.facebook),
                            iconSize: 24,
                            color: AppColors.textBlack,
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                AppColors.buttonBGSecondary,
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              minimumSize: WidgetStateProperty.all(
                                const Size(0, 44),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              print("Apple");
                            },
                            icon: Icon(Icons.apple),
                            iconSize: 24,
                            color: AppColors.textBlack,
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                AppColors.buttonBGSecondary,
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              minimumSize: WidgetStateProperty.all(
                                const Size(0, 44),
                              ),
                            ),
                          ),
                        ),
                      ],
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
