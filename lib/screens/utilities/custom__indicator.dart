// import 'package:anifix/screens/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  // final String text;
  final Color color;
  const CustomIndicator({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 35,
          child: Divider(
            color: color,
            thickness: 3.0,
          ),
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: 5,
          child: Divider(
            color: color,
            thickness: 3.0,
          ),
        ),
      ],
    );
  }
}
