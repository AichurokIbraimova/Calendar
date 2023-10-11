import 'package:flutter/material.dart';
import 'package:login_page/constants/app_text_styles.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.text,
    required this.color,
    required this.height,
    required this.width,
  });
  final String text;
  final Color color;
  // final TextStyle style;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.izmenit,
          ),
        ),
      ),
    );
  }
}
