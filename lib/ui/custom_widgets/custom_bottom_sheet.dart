import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/typography.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'custom_button.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        height: 310,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'What would you like to add?',
              style: labelLarge,
            ),
            const Text(
              'Would you like to post your tips and experiences or create a job?',
              style: bodyMedium,
            ),
            CustomButton(
              childText: 'post',
              backgroundColor: buttonPrimary,
              textColor: buttonTextPrimary,
              onPressed: () {},
            ),
            CustomButton(
              childText: 'make a job',
              backgroundColor: buttonSecondary,
              textColor: buttonTextSecondary,
              onPressed: () {},
            )
          ],
        ));
  }
}
