import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin/ui/custom_widgets/custom_button.dart';
import 'package:linkedin/ui/custom_widgets/custom_job_card.dart';
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
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          children: const [
            Text('Home'),
            CustomJobCard(
                imageUrl:
                    'https://images.unsplash.com/photo-1664730302624-3cba2a181006?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
                radius: 30)
          ],
        ),
      ),
    )));
  }
}
