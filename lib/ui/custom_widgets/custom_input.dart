import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomInput extends StatelessWidget {
  final TextInputType textInputType;
  final String hintText;
  final String label;

  const CustomInput({
    Key? key,
    required this.textInputType,
    required this.hintText,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: labelSmall,
        ),
        TextField(
          decoration: InputDecoration(
            isCollapsed: true,
            constraints: const BoxConstraints(maxHeight: 50, maxWidth: 350),
            hintText: hintText,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            contentPadding: const EdgeInsets.all(17),
          ),
          keyboardType: textInputType,
        ),
      ],
    );
  }
}
