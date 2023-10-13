import 'package:flutter/material.dart';
import 'constants.dart';

class CategoriesWidget extends StatelessWidget {
  final String imageName;
  final String imageIcon;
  final String imageText;
  const CategoriesWidget(
      {super.key,
      required this.imageName,
      required this.imageIcon,
      required this.imageText});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        width: screenWidth * 0.45,
        height: screenHeight * 0.13,
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.5,
                image: AssetImage(
                  "assets/categories_assets/$imageName.png",
                ))),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/categories_assets/$imageIcon.png"),
            SizedBox(height: screenHeight * 0.01),
            Text(imageText, style: kcategoriesTextstyle),
          ],
        )),
      ),
    );
  }
}
