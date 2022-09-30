import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin/ui/custom_widgets/custom_button.dart';
import 'package:linkedin/ui/screens/auth/login_screen.dart';
import 'package:linkedin/utils/constants/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
          body: Column(
        children: [
          const Text('HOME'),
          CustomButton(
              backgroundColor: buttonPrimary,
              textColor: buttonTextPrimary,
              onPressed: ((() {
                Get.to(const LoginScreen());
              })),
              childText: 'go to login')
        ],
      ))),
    );
  }
}
