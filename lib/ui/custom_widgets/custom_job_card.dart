import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_avatar.dart';
import 'package:linkedin/ui/custom_widgets/custom_text_card.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomJobCard extends StatelessWidget {
  final String imageUrl;
  final double radius;
  const CustomJobCard({
    super.key,
    required this.imageUrl,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          decoration: BoxDecoration(
            color: cardBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAvatar(
                    imageUrl: imageUrl,
                    radius: radius,
                  ),
                  const Icon(Icons.more_vert)
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'UI/UX designer',
                      style: labelLarge,
                    ),
                    Text(
                      'Google inc . California, USA',
                      style: bodyMedium,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomTextCard(text: 'Design'),
                  CustomTextCard(text: 'Full time'),
                  CustomTextCard(text: 'Senior designer'),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('25 minute ago'),
                  Text('\$15k/mo'),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          decoration: BoxDecoration(
            color: cardBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAvatar(
                    imageUrl: imageUrl,
                    radius: radius,
                  ),
                  const Icon(Icons.more_vert)
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'UI/UX designer',
                      style: labelLarge,
                    ),
                    Text(
                      'Google inc . California, USA',
                      style: bodyMedium,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomTextCard(text: 'Design'),
                  CustomTextCard(text: 'Full time'),
                  CustomTextCard(text: 'Senior designer'),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('25 minute ago'),
                  Text('\$15k/mo'),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
