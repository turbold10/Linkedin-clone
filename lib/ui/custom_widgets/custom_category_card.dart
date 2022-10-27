import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomCategoryCard extends StatelessWidget {
  final String? path;
  final double? width;
  final double? heigth;
  final String amountOfJob;
  final String categoryOfJob;
  final Color backgroundColor;

  const CustomCategoryCard({
    super.key,
    this.path,
    this.width,
    this.heigth,
    required this.backgroundColor,
    required this.amountOfJob,
    required this.categoryOfJob,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          path == '' ? const SizedBox() : Image.asset('assets/images/$path'),
          Container(
            margin: const EdgeInsets.all(12),
            child: Text(
              amountOfJob,
              style: labelLarge,
            ),
          ),
          Text(
            categoryOfJob,
            style: bodyLarge,
          ),
        ],
      ),
    );
  }
}
