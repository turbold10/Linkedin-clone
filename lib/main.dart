import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/ui/screens/main/main_screen.dart';
import 'package:linkedin/ui/screens/splash/splash_screen.dart';
import 'package:linkedin/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:linkedin/ui/screens/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'DM Sans'),
      initialRoute: splashRoute,
      routes: <String, WidgetBuilder>{
        splashRoute: (context) => const SplashScreen(),
        loginRoute: (context) => const LoginScreen(),
        mainRoute: (context) => const MainScreen(),
        // verifyRoute: (context) => const VerifyScreen(),
        // profileRoute: (context) => const ProfileScreen()
      },
    );
  }
}
