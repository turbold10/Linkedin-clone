import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:linkedin/ui/custom_widgets/custom_button.dart';
import 'package:linkedin/ui/custom_widgets/custom_input.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomInput(
                onChanged: (value) => {verifyCode = value},
                hintText: 'Verify code',
                textInputType: TextInputType.number,
                label: 'Verification code',
              ),
              CustomButton(
                onPressed: ((() async {
                  try {
                    var value = await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: _incomingData['verifyCode'] ?? '',
                            smsCode: verifyCode));
                    if (value.user != null) {
                      String? uid = value.user?.uid;
                      final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                      sharedPreferences.setString('uid', uid!);
                      print(uid);
                      Get.to(mainRoute);
                    }
                  } catch (e) {
                    print(e);
                  }
                })),
                backgroundColor: buttonPrimary,
                childText: "verify",
                textColor: buttonTextPrimary,
              )
            ],
          ),
        ),
      )),
    );
  }
}
