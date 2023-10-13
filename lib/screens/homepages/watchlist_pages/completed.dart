import 'package:anifix/screens/utilities/custom_card.dart';
import 'package:flutter/material.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomCard(
          title: "Jujutsu Kaisen(TV)",
          subtitle: "Fall 2017",
          imageName: 'OPM',
          noOfEpisodes: '12/12 eps',
        ),
      ],
    );
  }
}
