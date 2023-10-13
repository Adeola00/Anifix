import 'package:anifix/screens/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Widget text;
  final Widget? trailing;
  const CustomTile({super.key, required this.text, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: ktextFieldColor,
        leading: text,
        trailing: trailing,
      ),
    );
  }
}
