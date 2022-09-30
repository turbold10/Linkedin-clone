import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_avatar.dart';

class CustomJobCard extends StatelessWidget {
  const CustomJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      color: Colors.amber,
      child: CustomAvatar(
        background: Colors.black,
        size: 20,
        image: Image.asset('./assets/images/gull.jpeg', fit: BoxFit.cover),
      ),
    );
  }
}
