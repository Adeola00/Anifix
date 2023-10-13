import 'package:anifix/screens/homepages/bottomnav.dart';
import 'package:anifix/screens/onboarding/splashscreen.dart';
import 'package:anifix/screens/sign_in/login.dart';
import 'package:anifix/screens/sign_in/signup.dart';
import 'package:anifix/scrollable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignUpPage.routeName: (context) => const SignUpPage(),
        LogInPage.routeName: (context) => const LogInPage(),
        BottomNav.routeName: (context) => const BottomNav(),
      },
      theme: ThemeData(
        fontFamily: 'Avenir LT Pro',
      ),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
