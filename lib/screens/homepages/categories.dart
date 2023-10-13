// import 'package:anifix/screens/utilities/constants.dart';
import 'package:anifix/screens/utilities/heading_row.dart';
import 'package:flutter/material.dart';
import 'package:anifix/screens/utilities/categories_widget.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const HeadingRow(headingText: 'Categories'),
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CategoriesWidget(
                    imageName: "action",
                    imageIcon: "action_icon",
                    imageText: "Action"),
                CategoriesWidget(
                    imageName: "adventure",
                    imageIcon: "adventure_icon",
                    imageText: "Adventure")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CategoriesWidget(
                    imageName: "comedy",
                    imageIcon: "comedy_icon",
                    imageText: "Comedy"),
                CategoriesWidget(
                    imageName: "romance",
                    imageIcon: "romance_icon",
                    imageText: "Romance")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CategoriesWidget(
                    imageName: "sci-fi",
                    imageIcon: "sci-fi_icon",
                    imageText: "Sci-Fi"),
                CategoriesWidget(
                    imageName: "seinen",
                    imageIcon: "seinen_icon",
                    imageText: "Seinen")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CategoriesWidget(
                    imageName: "music",
                    imageIcon: "music_icon",
                    imageText: "Music"),
                CategoriesWidget(
                    imageName: "supernatural",
                    imageIcon: "supernatural_icon",
                    imageText: "Supernatural")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CategoriesWidget(
                    imageName: "thriller",
                    imageIcon: "thriller_icon",
                    imageText: "Thriller"),
                CategoriesWidget(
                    imageName: "sports",
                    imageIcon: "sports_icon",
                    imageText: "Sports")
              ],
            )
          ],
        ),
      ),
    );
  }
}
