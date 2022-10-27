import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomButton extends StatelessWidget {
  final String childText;
  final Color? backgroundColor;
  final Color? textColor;
  final Function()? onPressed;
  // final Size size;

  const CustomButton({
    Key? key,
    this.backgroundColor,
    this.textColor,
    this.onPressed,
    required this.childText,
    // required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          maximumSize: const Size(320, 60),
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        childText.toUpperCase(),
        style: button,
      ),
    );
  }
}
