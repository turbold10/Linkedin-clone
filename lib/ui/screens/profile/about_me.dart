import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/back_arrow.dart';
import 'package:linkedin/ui/custom_widgets/custom_bottom_sheet.dart';
import 'package:linkedin/ui/custom_widgets/custom_button.dart';
import 'package:linkedin/ui/custom_widgets/custom_input.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/constants/typography.dart';
import 'package:linkedin/utils/routes.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 300,
        // runAlignment: WrapAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackArrow(
            onPressedBack: () {
              goToProfileScreen();
            },
          ),
          Column(
            children: const [
              Text(
                'About me',
                style: labelLarge,
              ),
              CustomInput(
                label: '',
                hintText: 'Tell me about you.',
                textInputType: TextInputType.text,
                maxLines: 9,
              ),
            ],
          ),
          CustomButton(
            childText: 'save',
            backgroundColor: buttonPrimary,
            textColor: buttonTextPrimary,
            onPressed: _showModal,
          )
        ],
      ),
    );
  }

  void _showModal() {
    Get.bottomSheet(
      const CustomBottomSheet(
        primaryButtonText: 'Continue Filling',
        secondaryButtonText: 'Undo Changes',
        smallTitle: 'Undo Changes ?',
        description: 'Are you sure you want to change what you entered?',
      ),
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
      backgroundColor: Colors.white,
    );
  }

  goToProfileScreen() {
    Get.toNamed(homeRoute);
  }
}
