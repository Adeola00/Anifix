import 'package:anifix/screens/homepages/bottomnav.dart';
import 'package:anifix/screens/sign_in/login.dart';
import 'package:anifix/screens/utilities/constants.dart';
import 'package:anifix/screens/utilities/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const routeName = '/signUpPage';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "aniFiX.",
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: const Color(0XFFE50914),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                const Text("Sign Up",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                SizedBox(height: screenHeight * 0.035),
                const CustomField(
                  icon: Icons.person_outline,
                  text: "Username",
                  obscureText: false,
                ),
                // const SizedBox(height: 3),
                const CustomField(
                  icon: Icons.email_outlined,
                  text: "Email ID",
                  obscureText: false,
                ),
                // const SizedBox(height: 7),
                const CustomField(
                  icon: Icons.lock_outline,
                  text: "Password",
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: khintTextColor,
                  ),
                  obscureText: true,
                ),
                const CustomField(
                  icon: Icons.lock_outline,
                  text: "Confirm Password",
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: khintTextColor,
                  ),
                  obscureText: true,
                ),
                SizedBox(height: screenHeight * 0.02),
                SizedBox(
                  height: 60,
                  width: screenWidth * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, BottomNav.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                          top: 15, right: 20, bottom: 15, left: 20),
                      backgroundColor: kbuttonColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.035),
                Row(children: const [
                  Expanded(
                    child: Divider(
                      height: 1,
                      color: Color.fromARGB(25, 255, 255, 255),
                      thickness: 3,
                      indent: 12,
                    ),
                  ),
                  Text(
                    "Or",
                    style: TextStyle(
                      height: 0.5,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 1,
                      color: Color.fromARGB(25, 255, 255, 255),
                      thickness: 3,
                      endIndent: 12,
                    ),
                  ),
                ]),
                SizedBox(height: screenHeight * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/google.png"),
                    const SizedBox(width: 15),
                    Image.asset("assets/facebook.png"),
                    const SizedBox(width: 15),
                    Image.asset("assets/twitter.png")
                  ],
                ),
                SizedBox(height: screenHeight * 0.025),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, BottomNav.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Skip",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        // padding: EdgeInsets.all(100.0),
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.fast_forward,
                          size: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.035),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(
                          context, LogInPage.routeName),
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                            color: kbuttonColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
