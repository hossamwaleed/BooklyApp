import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      this.borderradius,
      this.textcolor});
  final String text;
  final Color backgroundColor;
  final Color? textcolor;
  final BorderRadius? borderradius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: textcolor),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderradius ?? BorderRadius.circular(12))));
  }
}
