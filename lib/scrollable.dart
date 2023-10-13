import 'package:anifix/screens/homepages/home_model.dart';
import 'package:anifix/screens/utilities/custom_button.dart';
import 'package:anifix/screens/utilities/home_heading_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyScroll extends StatelessWidget {
  const MyScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: kToolbarHeight * 0.75,
          backgroundColor: Colors.transparent,
          title: const HomeHeadingRow(headingText: "aniFiX."),
          automaticallyImplyLeading: false,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/MHA.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 00.0,
              bottom: 00.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x00000000),
                      Color(0x99000000),
                      Color(0xe7000000),
                      Colors.black
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4),
                        Text(
                          "Boku no Hero Academia",
                          style: GoogleFonts.montserrat(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            CustomButton(text: "Action"),
                            CustomButton(text: "Adventure"),
                            CustomButton(text: "Comedy"),
                            CustomButton(text: "Drama"),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            ElevatedButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 15, bottom: 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              onPressed: null,
                              child: Row(
                                children: const [
                                  Text(
                                    "Watch Now",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                  ImageIcon(
                                    AssetImage("assets/icons/play.png"),
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            // const ImageIcon(
                            //   AssetImage("assets/icons/add_circle.png"),
                            //   size: 60,
                            //   color: Colors.white,
                            // ),
                            const Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                              size: 60,
                              // weight: 5.0,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Recommened for you",
                            style: GoogleFonts.montserrat(
                                fontSize: 21,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            items[index].imageName))),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 25),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Most Popular",
                            style: GoogleFonts.montserrat(
                                fontSize: 21,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            items[index].imageName))),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
