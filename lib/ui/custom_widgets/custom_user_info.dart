import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_avatar.dart';
import 'package:linkedin/ui/custom_widgets/custom_button.dart';
import 'package:linkedin/utils/constants/typography.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../screens/splash/splash_screen.dart';

class CustomUserInfo extends StatefulWidget {
  const CustomUserInfo({super.key});

  @override
  State<CustomUserInfo> createState() => _CustomUserInfoState();
}

class _CustomUserInfoState extends State<CustomUserInfo> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 12, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 28,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                const CustomAvatar(
                    imageUrl:
                        'https://images.unsplash.com/photo-1665178861957-32094ff5aca2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
                    radius: 32),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Orlando Diggs\n',
                        style: labelMedium,
                      ),
                      TextSpan(
                        text: 'California, USA',
                        style: labelSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Color(0xffffffff)),
                  children: [
                    TextSpan(text: '120k ', style: labelMedium),
                    TextSpan(text: 'follower', style: bodyMedium),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Color(0xffffffff)),
                  children: [
                    TextSpan(text: '23k ', style: labelMedium),
                    TextSpan(text: 'following', style: bodyMedium),
                  ],
                ),
              ),
              CustomButton(
                childText: 'Edit profile',
                onPressed: () async {
                  final SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.remove('uid');
                  var uid = sharedPreferences.getString('uid');
                  print(uid);
                },
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
