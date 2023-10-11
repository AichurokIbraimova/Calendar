import 'package:flutter/material.dart';
import 'package:login_page/constants/app_text_styles.dart';
import 'package:login_page/ui/pages/personal_page.dart';

class PriglasheniyaWidget extends StatelessWidget {
  const PriglasheniyaWidget({
    super.key,
    required this.image,
    required this.text,
    required this.text1,
    required this.text2,
  });
  final Image image;
  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          image,
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text((text), style: AppTextStyles.activPrig),
              Text((text1), style: AppTextStyles.id)
            ],
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              children: [
                Text(
                  text2,
                  style: AppTextStyles.red,
                ),
                ContPriglasit(
                  text: 'Выбрать',
                  height: MediaQuery.of(context).size.height * 0.028,
                  width: MediaQuery.of(context).size.width * 0.27,
                  icons: Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
