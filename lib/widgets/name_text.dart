import 'package:flutter/material.dart';
import 'package:login_page/constants/app_text_styles.dart';

class NameText extends StatelessWidget {
  const NameText({
    super.key,
    required this.text,
    required this.text1,
  });
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppTextStyles.izmenit,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text1,
          style: AppTextStyles.name,
        ),
      ],
    );
  }
}
