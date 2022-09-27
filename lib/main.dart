import 'package:flutter/material.dart';
import 'package:linkedin/utils/routes.dart';
import 'package:linkedin/ui/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:linkedin/ui/screens/login_screen.dart';
import 'package:linkedin/ui/screens/verify_screen.dart';
import 'package:linkedin/ui/screens/profile/profile_screen.dart';

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
      theme: ThemeData(fontFamily: 'DM Sans'),
      initialRoute: loginRoute,
      routes: <String, WidgetBuilder>{
        homeRoute: (context) => const HomeScreen(),
        loginRoute: (context) => const LoginScreen(),
        verifyRoute: (context) => const VerifyScreen(),
        profileRoute: (context) => const ProfileScreen()
      },
    );
  }
}
