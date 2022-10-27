import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_bottom_sheet.dart';
import 'package:linkedin/ui/custom_widgets/custom_button.dart';
import 'package:linkedin/ui/custom_widgets/custom_input.dart';
import 'package:linkedin/utils/constants/color_constants.dart';
import 'package:linkedin/utils/constants/typography.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text(
          'Add work experience',
          style: labelLarge,
        ),
        const CustomInput(
          label: "Job title",
          textInputType: TextInputType.text,
        ),
        const CustomInput(
          label: "Company",
          textInputType: TextInputType.text,
        ),
        Row(
          children: const[
            CustomInput(
              label: "Start date",
              textInputType: TextInputType.datetime,
            ),
            // CustomInput(
            //   label: "End date",
            //   textInputType: TextInputType.text,
            // )
          ],
        ),
        CustomButton(
          childText: 'save',
          backgroundColor: buttonPrimary,
          textColor: buttonTextPrimary,
          onPressed: _showModal,
        )
      ]),
    );
  }
}
