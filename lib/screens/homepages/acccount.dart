import 'package:anifix/screens/sign_in/login.dart';
import 'package:anifix/screens/utilities/constants.dart';
import 'package:anifix/screens/utilities/custom_tile.dart';
import 'package:flutter/material.dart';
import 'package:anifix/screens/utilities/heading_row.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const HeadingRow(headingText: 'Account'),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                    child: Row(
                      children: [
                        Image.asset("assets/killua.png"),
                      ],
                    ),
                  ),
                  const Text(
                    "Account & Profile",
                    style: kaccountSubHeadingTextstyle,
                  ),
                  const SizedBox(height: 15),
                  const CustomTile(
                    text: Text('Change Email', style: kaccountCardTextstyle),
                    trailing: Icon(Icons.arrow_forward_ios,
                        color: kaccountCardIconColor,
                        size: kaccountCardIconSize),
                  ),
                  const CustomTile(
                    text: Text("Change Password", style: kaccountCardTextstyle),
                    trailing: Icon(Icons.arrow_forward_ios,
                        color: kaccountCardIconColor,
                        size: kaccountCardIconSize),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "General",
                    style: kaccountSubHeadingTextstyle,
                  ),
                  const SizedBox(height: 15),
                  CustomTile(
                    text: const Text("Subtitle Language",
                        style: kaccountCardTextstyle),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text("English",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800)),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward_ios,
                            color: kaccountCardIconColor,
                            size: kaccountCardIconSize)
                      ],
                    ),
                  ),
                  const CustomTile(
                      text: Text("Notifications", style: kaccountCardTextstyle),
                      trailing: Icon(Icons.toggle_on_sharp,
                          color: kaccountCardIconColor, size: 50)),
                  const CustomTile(
                      text: Text("Stream Using Cellular",
                          style: kaccountCardTextstyle),
                      trailing: Icon(Icons.toggle_off,
                          color: Colors.black, size: 50)),
                  const CustomTile(
                      text:
                          Text("Mature Content", style: kaccountCardTextstyle),
                      trailing: Icon(Icons.toggle_off,
                          color: Colors.black, size: 50)),
                  const SizedBox(height: 30),
                  const Text(
                    "Other",
                    style: kaccountSubHeadingTextstyle,
                  ),
                  const SizedBox(height: 15),
                  CustomTile(
                    text: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LogInPage.routeName);
                      },
                      child: const Text(
                        "Log Out",
                        style: TextStyle(
                          color: Color(0xffE50914),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
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
    );
  }
}
