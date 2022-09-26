import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/sp_manager.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  // final String phoneNumber = Get.arguments[0];
  // final String verificationCode = Get.arguments[1];
  final Map<String, String> _incomingData = Get.arguments;

  String verifyCode = '';
  @override
  Widget build(BuildContext context) {
    print("verifyScreen: $_incomingData");
    return SafeArea(
      child: (Scaffold(
        body: Column(
          children: [
            TextField(
                onChanged: (value) => {verifyCode = value},
                decoration:
                    InputDecoration(labelText: _incomingData['phoneNumber'])),
            MaterialButton(
              onPressed: ((() async {
                try {
                  var value = await FirebaseAuth.instance.signInWithCredential(
                      PhoneAuthProvider.credential(
                          verificationId: _incomingData['verifyCode'] ?? '',
                          smsCode: verifyCode));
                  if (value.user != null) {
                    SpManager sharedPreference = SpManager();
                    await sharedPreference.init();
          
                  }
                } catch (e) {
                  print(e);
                }
              })),
              child: const Text('verify'),
            )
          ],
        ),
      )),
    );
  }
}
