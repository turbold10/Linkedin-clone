import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:linkedin/ui/screens/auth/verify_screen.dart';
import 'package:linkedin/ui/custom_widgets/custom_button.dart';
import 'package:linkedin/ui/custom_widgets/custom_input.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/constants/typography.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 40,
            children: [
              const Text(
                'Create an Account',
                style: titleLarge,
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                style: bodyMedium,
                textAlign: TextAlign.center,
              ),
              CustomInput(
                label: 'Phone number',
                hintText: '+976xxxxxxxx',
                textInputType: TextInputType.phone,
                onChanged: (val) {
                  phoneNumber = val;
                },
              ),
              CustomButton(
                childText: "login",
                backgroundColor: buttonPrimary,
                textColor: buttonTextSecondary,
                onPressed: _phoneAuth,
              )
            ],
          ),
        ),
      )),
    );
  }

  _phoneAuth() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          var value =
              await FirebaseAuth.instance.signInWithCredential(credential);
          if (value.user != null) {
            print('user logged in');
          }
        },
        verificationFailed: (FirebaseAuthException error) => {print(error)},
        codeSent: ((String verificationId, forceResendingToken) async {
          goToVerifyScreen(verificationId);
        }),
        codeAutoRetrievalTimeout: ((verificationId) =>
            goToVerifyScreen(verificationId)),
        timeout: const Duration(seconds: 60));
  }

  goToVerifyScreen(String verifyCode) {
    Get.to(
      const VerifyScreen(),
      arguments: {
        "phoneNumber": phoneNumber,
        "verifyCode": verifyCode,
      },
    );
  }
}
