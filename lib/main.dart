import 'package:flutter/material.dart';
import 'package:linkedin/utils/routes.dart';
import 'package:linkedin/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:linkedin/screens/login_screen.dart';
import 'package:linkedin/screens/verify_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: homeRoute,
      routes: <String, WidgetBuilder>{
        homeRoute: (context) => const HomeScreen(),
        loginRoute: (context) => const LoginScreen(),
        verifyRoute: (context) => const VerifyScreen(),
      },
    );
  }
}
  