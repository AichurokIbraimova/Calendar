import 'package:flutter/material.dart';
import 'package:login_page/constants/app_colors.dart';
import 'package:login_page/constants/app_text_styles.dart';

class TextFormWidget extends StatelessWidget {
  final String text;

  const TextFormWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.container,
          borderRadius: BorderRadius.circular(12)),
      width: 238,
      height: 37,
      child: TextFormField(
        decoration: InputDecoration(
          labelStyle: AppTextStyles.labelStyle,
          labelText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
