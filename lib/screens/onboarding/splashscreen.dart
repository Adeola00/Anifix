// ignore_for_file: use_build_context_synchronously
// import 'package:anifix/screens/onboarding/onboarding1.dart';
import 'package:anifix/screens/onboarding/onboard_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    //   Timer(
    //       const Duration(seconds: 3),
    //       () => Navigator.pushReplacementNamed(context, WelcomePage.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedSplashScreen(
        duration: 1500,
        backgroundColor: Colors.black,
        pageTransitionType: PageTransitionType.fade,
        splash: Center(
          child: Text("aniFiX.",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(229, 229, 9, 20)),
              )),
        ),
        splashTransition: SplashTransition.slideTransition,
        nextScreen: const OnBoard(),
      ),
    );
  }
}
