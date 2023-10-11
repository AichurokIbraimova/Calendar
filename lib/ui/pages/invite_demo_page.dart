import 'package:flutter/material.dart';
import 'package:login_page/constants/app_colors.dart';
import 'package:login_page/constants/app_text_styles.dart';
import 'package:login_page/widgets/image_widget.dart';

class InviteDemoPage extends StatelessWidget {
  const InviteDemoPage({super.key});

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
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Ирина Варламова',
                  style: TextStyle(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  'ID 001411',
                  style: TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Image.asset('assets/image.png'),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'КОНТАКТЫ',
              style: AppTextStyles.priglasheniya,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ImageWidget(
            image: Image.asset('assets/image2.png'),
            text: 'Сергей Прохоров',
            text1: 'ID 005412',
          ),
          const SizedBox(
            height: 30,
          ),
          ImageWidget(
            image: Image.asset('assets/sergey.png'),
            text: 'Сергей Юрьевич',
            text1: 'ID 678234',
          ),
          const SizedBox(
            height: 30,
          ),
          ImageWidget(
            image: Image.asset('assets/victor.png'),
            text: 'Виктор Генадьевич',
            text1: 'ID 099012',
          ),
          const SizedBox(
            height: 30,
          ),
          ImageWidget(
            image: Image.asset('assets/olga.png'),
            text: 'Ольга Смольная',
            text1: 'ID 012345',
          ),
          const SizedBox(
            height: 30,
          ),
          ImageWidget(
            image: Image.asset('assets/victoriya.png'),
            text: 'Виктория Сикрет',
            text1: 'ID 787813',
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: const BoxDecoration(
              color: AppColors.white,
            ),
            child: Center(
              child: Text(
                '        DEMO ВИДЖЕТ\n В ДАННЫЙ МОМЕНТ НЕ\n            РАБОТАЕТ',
                style: AppTextStyles.demo,
              ),
            ),
          )
        ],
      ),
    );
  }
}
