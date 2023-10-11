import 'package:flutter/material.dart';
import 'package:login_page/constants/app_text_styles.dart';
import 'package:login_page/ui/pages/personal_page.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
    required this.text,
    required this.text1,
  });
  final Image image;
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: image,
        ),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text, style: AppTextStyles.activPrig),
              Text(text1, style: AppTextStyles.id)
            ],
          ),
        ),
        const SizedBox(width: 10),
        ContPriglasit(
          text: 'Пригласить',
          height: MediaQuery.of(context).size.height * 0.035,
          width: MediaQuery.of(context).size.height * 0.16,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
