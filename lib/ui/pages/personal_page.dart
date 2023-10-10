// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_page/constants/app_colors.dart';
import 'package:login_page/constants/app_text_styles.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPageColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPageColor,
        title: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 40,
              color: AppColors.white,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text('ID 001411', style: AppTextStyles.id1),
          )
        ],
      ),
      body: Column(
        children: [
          Center(child: Image.asset('assets/irina.png')),
          const SizedBox(
            height: 20,
          ),
          ContainerButton(
            text: 'Изменить фото',
            color: AppColors.izmenit,
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 47),
            child: Column(
              children: [
                const NameText(
                  text: 'Имя:   ',
                  text1: 'Ирина',
                ),
                const SizedBox(
                  height: 40,
                ),
                const NameText(
                  text: 'Фамилия:   ',
                  text1: 'Варламова',
                ),
                const SizedBox(
                  height: 40,
                ),
                const NameText(
                  text: 'Почта:   ',
                  text1: 'irinavarlamova@yandex.ru',
                ),
                const SizedBox(
                  height: 40,
                ),
                const NameText(
                  text: 'Пароль:   ',
                  text1: '******************',
                ),
                const SizedBox(
                  height: 40,
                ),
                ContPriglasit(
                  text: 'Изменить ',
                  icons: Icons.arrow_forward_ios,
                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.height * 0.045,
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: ContainerButton(
                    text: 'ВЫЙТИ',
                    color: AppColors.red,
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ContPriglasit extends StatelessWidget {
  const ContPriglasit({
    super.key,
    required this.text,
    this.icons,
    required this.height,
    required this.width,
  });
  final String text;
  final IconData? icons;
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
            color: AppColors.izmenit, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  text,
                  style: AppTextStyles.izmenit,
                ),
                Icon(
                  icons,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerButton extends StatelessWidget {
  const ContainerButton({
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
