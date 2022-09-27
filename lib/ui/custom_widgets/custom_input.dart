import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String? hintText;
  final Function(String)? onChanged;
  final TextInputType? textInputType;

  const CustomInput({
    Key? key,
    this.textInputType,
    this.hintText,
    this.onChanged,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(runSpacing: 10, children: [
      Text(
        label,
        style: labelSmall,
      ),
      TextField(
        decoration: InputDecoration(
          filled: true,
          isCollapsed: true,
          hintText: hintText,
          fillColor: Colors.white,
          constraints: const BoxConstraints(maxHeight: 50, maxWidth: 350),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.all(17),
        ),
        keyboardType: textInputType,
        onChanged: onChanged,
      ),
    ]);
  }
}
