import 'package:flutter/material.dart';
import 'constants.dart';

class HeadingRow extends StatelessWidget {
  final String headingText;
  const HeadingRow({super.key, required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18, left: 10),
          child: Text(
            headingText,
            style: kheadingTextstyle,
          ),
        ),
        // Spacer(),
        const IconButton(
          padding: EdgeInsets.only(top: 18),
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 28,
          ),
          onPressed: null,
        ),
      ],
    );
  }
}
