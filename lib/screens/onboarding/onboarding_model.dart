import 'package:flutter/material.dart';
import 'package:anifix/screens/utilities/constants.dart';

// import 'constants.dart';

class OnboardingScreen {
  final String image;
  final String text;
  final String desc;
  final String desc2;
  final String desc3;
  final String btn1;
  final String btn2;
  final Color? btnColor1;
  final Color? btnColor2;
  final Color? bg;

  OnboardingScreen({
    required this.image,
    required this.text,
    required this.desc,
    required this.desc2,
    required this.desc3,
    required this.btn1,
    required this.btn2,
    required this.btnColor1,
    required this.btnColor2,
    this.bg,
  });
}

List<OnboardingScreen> screens = <OnboardingScreen>[
  OnboardingScreen(
      image: 'assets/gojo2.png',
      text: 'Welcome',
      desc: 'To anifix an app that keeps you',
      desc2: 'updated, and makes it stress free',
      desc3: 'to watch anime.',
      btnColor1: Colors.transparent,
      btn1: 'Skip',
      btn2: 'Next',
      btnColor2: Colors.white,
      bg: Colors.black),
  OnboardingScreen(
    image: 'assets/kaneki2.png',
    text: 'Watch Anime',
    desc: 'You can watch your preferred anime',
    desc2: 'from your created list or save to',
    desc3: 'downloads to watch later',
    btnColor1: Colors.transparent,
    btnColor2: kbuttonColor,
    btn1: 'Skip',
    btn2: 'Get Started',
    bg: Colors.white,
  ),
  OnboardingScreen(
    image: 'assets/boruto2.png',
    text: 'Explore',
    desc: 'Create an account with us to get',
    desc2: 'info on new shows arriving, and also',
    desc3: 'updates on existing shows.',
    btnColor1: Colors.transparent,
    btn1: 'Log In',
    btn2: 'Sign Up',
    btnColor2: kbuttonColor,
    bg: Colors.white,
  ),
];
