import 'package:flutter/material.dart';
import 'package:login_page/constants/app_colors.dart';
import 'package:login_page/constants/app_text_styles.dart';
import 'package:login_page/widgets/custom_button.dart';
import 'package:login_page/widgets/text_form_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColors.backgroundPageColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/Vector.png'),
          ),
          const SizedBox(
            height: 60,
          ),
          const TextFormWidget(
            text: 'ЛОГИН',
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFormWidget(
            text: 'ПАРОЛЬ',
          ),
          const SizedBox(
            height: 40,
          ),
           CustomButton(
            text: 'ВОЙТИ',
            colors: AppColors.customButtonColor,
            style: 
                AppTextStyles.voiti ,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'ИЛИ',
            style: AppTextStyles.or,
          ),
          const SizedBox(
            height: 10,
          ),
           CustomButton(
            text: 'ЗАРЕГИСТРИРОВАТЬСЯ',
            colors: AppColors.zareg,
            style: AppTextStyles.or,
          )
        ],
      ),
    );
  }
}
