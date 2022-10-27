import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/utils/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => _checkingUser());
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _checkingUser(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
      ),
    );
  }

  void _checkingUser() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String userID = sharedPreferences.getString('uid') ?? '';
    print(userID);
    userID == '' ? Get.toNamed(loginRoute) : Get.toNamed(mainRoute);
  }
}
