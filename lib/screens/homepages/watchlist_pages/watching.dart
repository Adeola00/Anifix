import 'package:anifix/screens/utilities/custom_card.dart';
import 'package:flutter/material.dart';

class WatchingPage extends StatelessWidget {
  const WatchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomCard(
          title: "Jujutsu Kaisen(TV)",
          subtitle: "Fall 2020",
          imageName: 'JJK',
          noOfEpisodes: '16/24 episodes',
        ),
        CustomCard(
          title: "One Piece(TV)",
          subtitle: "Fall 1999",
          imageName: "one_piece",
          noOfEpisodes: '300/1024 episodes',
        ),
      ],
    );
  }
}
