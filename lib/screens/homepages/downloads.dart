import 'package:anifix/screens/utilities/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:anifix/screens/utilities/heading_row.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const HeadingRow(headingText: 'Downloads'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(height: 30),
          CustomCard(
            title: "Jujutsu Kaisen(TV)",
            subtitle: "TV | 4 Episodes | 526MB",
            status: "Finished",
            imageName: "JJK",
            icon: FontAwesomeIcons.circleCheck,
          ),
          CustomCard(
              title: "One Piece(TV)",
              subtitle: "TV | 1 Episode | 165MB",
              status: "Downloading 79%",
              imageName: "one_piece",
              icon: FontAwesomeIcons.circleNotch),
          CustomCard(
            title: "One Punch Man(TV)",
            subtitle: "TV | 2 Episodes | 320MB",
            status: "Downloading 64%",
            imageName: "OPM",
            icon: FontAwesomeIcons.circleNotch,
          )
        ],
      ),
    ));
  }
}
