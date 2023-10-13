import 'package:anifix/screens/homepages/acccount.dart';
import 'package:anifix/screens/homepages/categories.dart';
import 'package:anifix/screens/homepages/downloads.dart';
import 'package:anifix/screens/homepages/home.dart';
import 'package:anifix/screens/homepages/watchlist.dart';
import 'package:anifix/screens/utilities/constants.dart';
import 'package:flutter/material.dart';

var indexClicked = 0;

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  static const routeName = "/bottomNavPage";
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final pages = [
    const HomePage(),
    const Categories(),
    const WatchList(),
    const Download(),
    const Account(),
  ];

  void updateState(int index) {
    setState(() {
      indexClicked = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbottomNavColor,
        body: pages[indexClicked],
        bottomNavigationBar: Container(
          // padding: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: kbottomNavColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: indexClicked,
            onTap: updateState,
            selectedItemColor: Colors.white,
            unselectedItemColor: kbottomNavIconColor,
            unselectedFontSize: 12,
            selectedLabelStyle: kbottomNavTextstyle,
            iconSize: 26,
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/home.png")),
                label: "Home",
                activeIcon:
                    ImageIcon(AssetImage("assets/icons/active_home.png")),
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/category.png")),
                  label: "Cagetories",
                  activeIcon: ImageIcon(
                      AssetImage("assets/icons/active_category.png"))),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/watchlist.png")),
                  label: "Watchlist",
                  activeIcon: ImageIcon(
                      AssetImage("assets/icons/active_watchlist.png"))),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/downloads.png")),
                  label: "Downloads",
                  activeIcon: ImageIcon(
                      AssetImage("assets/icons/active_downloads.png"))),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/person.png")),
                  label: "Account",
                  activeIcon:
                      ImageIcon(AssetImage("assets/icons/active_person.png"))),
            ],
          ),
        ),
      ),
    );
  }
}
