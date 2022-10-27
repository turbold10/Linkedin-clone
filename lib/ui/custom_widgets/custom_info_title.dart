import 'package:flutter/material.dart';
import 'package:linkedin/utils/constants/typography.dart';
import 'package:linkedin/utils/constants/color_constants.dart';

class CustomInfoTitle extends StatelessWidget {
  String? text;
  String? article;
  String? type;
  String? job;
  CustomInfoTitle({
    super.key,
    this.type,
    this.job,
    this.text,
    this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      const SizedBox(width: 24),
                      Text(
                        text!,
                        style: labelMedium,
                      ),
                    ],
                  ),
                  Icon(
                    type == 'about' ? Icons.edit : Icons.add_circle,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 36,
              endIndent: 36,
              color: dividerColor,
            ),
            if (type == 'about')
              Container(
                margin: const EdgeInsets.all(32),
                child: Text(article!),
              ),
            if (type == 'work') Column(children: [Text(job!)])
          ],
        ));
  }
}
