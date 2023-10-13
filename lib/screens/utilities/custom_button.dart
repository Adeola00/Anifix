import 'package:flutter/material.dart';
import 'constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding:
                const EdgeInsets.only(left: 14, right: 14, top: 12, bottom: 12),
            backgroundColor: Colors.transparent,
            side: const BorderSide(
                color: Colors.white, width: 2, style: BorderStyle.solid),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: null,
        child: Text(
          text,
          style: khomeRowTextstyle,
        ));
  }
}
