import 'package:anifix/screens/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? status;
  final String? imageName;
  final IconData? icon;
  final String? noOfEpisodes;
  final IconData? latterIcon;
  const CustomCard({
    super.key,
    this.title,
    this.subtitle,
    this.status,
    this.imageName,
    this.icon,
    this.noOfEpisodes,
    this.latterIcon,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: ktextFieldColor),
        width: screenWidth * 0.9,
        height: screenHeight * 0.17,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0, left: 5.0),
              child: Image.asset(
                "assets/$imageName.png",
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: kcustomCardTitleTextstyle,
                ),
                const SizedBox(height: 7),
                Text(
                  subtitle!,
                  style: kcustomCardSubtitleTextstyle,
                ),
                const SizedBox(height: 7),
                Text(
                  status ?? "",
                  style: kcustomCardStatusTextstyle,
                ),
                const SizedBox(height: 7),
                Text(noOfEpisodes ?? "", style: knoOfEpTextstyle),
                const SizedBox(height: 5),
                RichText(
                  text: const TextSpan(
                    text: "Series",
                    style: TextStyle(
                        color: kbuttonColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: " - ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: "Sub/Dub",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            const Spacer(),
            Icon(
              icon,
              color: kcustomCardIconColour,
              size: 30,
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
