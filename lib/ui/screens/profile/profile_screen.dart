import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_info_widget.dart';
import 'package:linkedin/ui/custom_widgets/custom_user_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomUserInfo(),
            CustomInfoWidget(
              type: 'about',
              text: 'About me',
              article:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
            ),
            CustomInfoWidget(
              type: 'work',
              text: 'work experience',
              job: 'Manager',
            ),
            CustomInfoWidget(
              type: 'educaion',
              text: 'education',
            ),
          ],
        ),
      ),
    );
  }
}
