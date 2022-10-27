import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_category_card.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomCategorySection extends StatelessWidget {
  const CustomCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: const Text(
            'Find your job',
            style: labelLarge,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomCategoryCard(
                  heigth: 180,
                  width: 150,
                  backgroundColor: categoryBackgroundColor1,
                  amountOfJob: '44.5k',
                  categoryOfJob: 'Remote Job',
                  path: 'remote_job.png',
                ),
                Column(
                  children: const [
                    CustomCategoryCard(
                        width: 160,
                        heigth: 85,
                        backgroundColor: categoryBackgroundColor2,
                        amountOfJob: '66.8k',
                        categoryOfJob: 'Full Time',
                        path: ''),
                    SizedBox(height: 10),
                    CustomCategoryCard(
                        width: 160,
                        heigth: 85,
                        backgroundColor: categoryBackgroundColor3,
                        amountOfJob: '38.9k',
                        categoryOfJob: 'Part Time',
                        path: ''),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
