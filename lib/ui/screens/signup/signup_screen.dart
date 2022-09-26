import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_button.dart';
import 'package:linkedin/ui/custom_widgets/custom_input.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/constants/typography.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Create an Account',
              style: titleLarge,
              // textAlign: TextAlign.left,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
              style: bodyMedium,
            ),
            CustomInput(
              label: 'Phone Number',
              hintText: '99xxxxxx',
              textInputType: TextInputType.phone,
            ),
            CustomButton(
              childText: "sign up with google",
              backgroundColor: buttonPrimary,
              textColor: buttonTextSecondary,
            ),
          ]),
    );
  }
}
