import 'package:anifix/screens/homepages/bottomnav.dart';
import 'package:anifix/screens/sign_in/login.dart';
import 'package:anifix/screens/sign_in/signup.dart';
import 'package:flutter/material.dart';
import 'package:anifix/screens/onboarding/onboarding_model.dart';
import '../utilities/constants.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int? index;
  int currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // _storeOnBoardInfo() async{
  //   int isViewed = 0;
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('onBoard', isViewed);
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: screens.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    // Image
                    Image.asset(
                      screens[index].image,
                      height: screenHeight * 0.65,
                    ),
                    // CustomCard
                    Container(
                      height: screenHeight * 0.30,
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1A1A1A),
                        borderRadius: kbottomContainerBorderRadius,
                      ),
                      padding: const EdgeInsets.only(right: 25.0, left: 25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: screenHeight * 0.015),
                          // Title
                          Text(
                            screens[index].text,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color(0XFFFFFFFF)),
                          ),
                          const SizedBox(height: 15),
                          // Description
                          Text(screens[index].desc, style: ktextStyle),
                          const SizedBox(height: 5),
                          Text(screens[index].desc2, style: ktextStyle),
                          const SizedBox(height: 5),
                          Text(screens[index].desc3, style: ktextStyle),
                          const SizedBox(height: 12),
                          // Page Indicator and Buttons
                          Row(
                            children: [
                              // Page Indicator
                              SizedBox(
                                height: 15,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: screens.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 3.0),
                                          height: 8,
                                          width:
                                              currentIndex == index ? 30 : 12.0,
                                          decoration: BoxDecoration(
                                            color: currentIndex == index
                                                ? kbuttonColor
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              const Spacer(flex: 5),
                              // Buttons
                              TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: screens[index].btnColor1),
                                onPressed: () {
                                  if (currentIndex == screens.length - 1) {
                                    Navigator.pushReplacementNamed(
                                        context, LogInPage.routeName);
                                  } else {
                                    Navigator.pushReplacementNamed(
                                        context, BottomNav.routeName);
                                  }
                                },
                                child: Text(
                                  screens[index].btn1,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 25, right: 25),
                                  backgroundColor: screens[index].btnColor2,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(13.5)),
                                ),
                                onPressed: () {
                                  if (currentIndex == screens.length - 1) {
                                    Navigator.pushReplacementNamed(
                                        context, SignUpPage.routeName);
                                  }
                                  _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                },
                                child: Text(
                                  screens[index].btn2,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: screens[index].bg),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
