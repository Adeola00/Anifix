import 'package:anifix/screens/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget? suffixIcon;
  final bool obscureText;
  const CustomField(
      {super.key,
      required this.icon,
      required this.text,
      this.suffixIcon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextField(
        style: const TextStyle(height: 1.4, color: Colors.white, fontSize: 18),
        keyboardType: TextInputType.text,
        obscureText: obscureText,
        decoration: InputDecoration(
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            filled: true,
            fillColor: ktextFieldColor,
            prefixIcon: Icon(
              icon,
              color: kiconColor,
              size: 24,
            ),
            hintText: text,
            suffixIcon: suffixIcon,
            hintStyle: const TextStyle(
              color: khintTextColor,
              fontSize: 16,
            )),
      ),
    );
  }
}
