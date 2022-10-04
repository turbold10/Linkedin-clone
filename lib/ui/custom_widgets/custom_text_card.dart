import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomTextCard extends StatelessWidget {
  final String text;

  const CustomTextCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: textCardBAckground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text, style: bodySmall),
    );
  }
}
