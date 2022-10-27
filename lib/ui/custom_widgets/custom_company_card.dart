import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_avatar.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomCompanyCard extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final String followers;
  const CustomCompanyCard({
    Key? key,
    required this.companyName,
    required this.followers,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 15,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          CustomAvatar(imageUrl: imageUrl, radius: 23),
          Text(
            companyName,
            style: labelMedium,
          ),
          Text(
            followers,
            style: bodyMedium,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "Follow",
              style: TextStyle(color: textPrimary, fontSize: 12),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 30)),
                side: MaterialStateProperty.all(
                    const BorderSide(color: followButton)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
          )
        ],
      ),
    );
  }
}
