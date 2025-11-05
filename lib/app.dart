import 'package:auth_ui/ui/pages/app_start/onboarding_pages.dart';
import 'package:auth_ui/ui/pages/auth/sign_in/sign_in_pages.dart';
import 'package:auth_ui/ui/pages/auth/sign_up/sign_up_pages.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello",
      initialRoute: "/",
      routes: {
        '/': (BuildContext context) => const Onboarding(),
        '/sign_in': (BuildContext context) => const SignIn(),
        '/sign_up': (BuildContext context) => const SignUp(),
      },
    );
  }
}
