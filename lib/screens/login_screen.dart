import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:linkedin/screens/verify_screen.dart';

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
        body: Column(
          children: [
            TextField(
                onChanged: (val) {
                  phoneNumber = val;
                },
                decoration: const InputDecoration(labelText: 'phone number')),
            MaterialButton(
              onPressed: _phoneAuth,
              child: const Text('login'),
            )
          ],
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
