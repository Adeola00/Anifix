import 'package:anifix/screens/utilities/custom_card.dart';
import 'package:flutter/material.dart';

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomCard(
          title: "Jujutsu Kaisen(TV)",
          subtitle: "TV - 24 Episodes (Finished Airing)",
          imageName: 'JJK',
        ),
        CustomCard(
          title: "One Piece(TV)",
          subtitle: "TV - ?  Episodes (currently Airing)",
          imageName: "one_piece",
        ),
        CustomCard(
          title: "One Punch Man(TV)",
          subtitle: "TV - 12  Episodes (Finished Airing)",
          imageName: "OPM",
        )
      ],
    );
  }
}
