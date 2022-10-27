import 'package:flutter/material.dart';
import 'package:linkedin/ui/screens/profile/about_me.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AboutMe(),

    );
  }
}