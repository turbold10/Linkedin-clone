import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/typography.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final int? maxLines;
  final String? hintText;
  final Function(String)? onChanged;
  final TextInputType? textInputType;

  const CustomInput({
    Key? key,
    this.maxLines,
    this.hintText,
    this.onChanged,
    this.textInputType,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 15, direction: Axis.vertical, children: [
      Text(
        label,
        style: labelSmall,
      ),
      TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          isCollapsed: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xffAAA6B9)),
          fillColor: Colors.white,
          constraints: const BoxConstraints(
            minHeight: 50,
            maxWidth: 350,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.all(17),
        ),
        keyboardType: TextInputType.text,
      ),
    ]);
  }
}
