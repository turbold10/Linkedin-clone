import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/typography.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'custom_button.dart';

class CustomBottomSheet extends StatelessWidget {
  final String smallTitle;
  final String description;
  final String primaryButtonText;
  final String secondaryButtonText;
  final Function()? onPressed;
  const CustomBottomSheet({
    Key? key,
    required this.smallTitle,
    required this.description,
    required this.primaryButtonText,
    required this.secondaryButtonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        height: 310,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              smallTitle,
              style: labelLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              description,
              style: bodyMedium,
              textAlign: TextAlign.center,
            ),
            CustomButton(
              childText: primaryButtonText,
              backgroundColor: buttonPrimary,
              textColor: buttonTextPrimary,
              onPressed: onPressed,
            ),
            CustomButton(
              childText: secondaryButtonText,
              backgroundColor: buttonSecondary,
              textColor: buttonTextSecondary,
              onPressed: () {},
            )
          ],
        ));
  }
}
