import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'constants.dart';

class HomeHeadingRow extends StatelessWidget {
  final String headingText;
  const HomeHeadingRow({super.key, required this.headingText});

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
            style: GoogleFonts.montserrat(
              fontSize: 24,
              color: const Color(0XFFE50914),
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const Spacer(flex: 2),
        const IconButton(
          padding: EdgeInsets.only(top: 18),
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          onPressed: null,
        ),
        const IconButton(
          padding: EdgeInsets.only(top: 18),
          icon: ImageIcon(
            AssetImage("assets/icons/bell.png"),
            color: Colors.black,
            size: 30,
          ),
          onPressed: null,
        ),
      ],
    );
  }
}
