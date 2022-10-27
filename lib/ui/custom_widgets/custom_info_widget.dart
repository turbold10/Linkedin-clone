import 'package:flutter/material.dart';
import 'package:linkedin/ui/custom_widgets/custom_info_title.dart';

class CustomInfoWidget extends StatelessWidget {
  String? job;
  String? type;
  String? text;
  String? date;
  String? skill;
  String? school;
  String? degree;
  String? article;
  String? company;
  String? language;
  CustomInfoWidget({
    super.key,
    this.job,
    this.type,
    this.text,
    this.date,
    this.skill,
    this.school,
    this.degree,
    this.company,
    this.article,
    this.language,
  });

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        CustomInfoTitle(
          article: article,
          text: text,
          type: type,
        ),
        CustomInfoTitle(
          text: text,
          article: article,
          job: job,
          type: type,
        ),
        Text(text ?? ''),
      ],
    ));
  }
}

String type = type;
