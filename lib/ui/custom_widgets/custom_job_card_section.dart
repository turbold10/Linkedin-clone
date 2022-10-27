import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_job_card.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomJobCardSection extends StatelessWidget {
  const CustomJobCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: const Text(
            'Recent Job List',
            style: labelLarge,
          ),
        ),
        const CustomJobCard(
          imageUrl:
              'https://images.unsplash.com/photo-1664730302624-3cba2a181006?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
          radius: 30,
        ),
      ],
    );
  }
}
