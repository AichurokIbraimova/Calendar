import 'package:flutter/material.dart';
import 'package:login_page/ui/pages/alert_dialog_page.dart';
import 'package:login_page/ui/pages/invite_page.dart';
import 'package:login_page/ui/pages/select_date_and_time_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SelectDatePage(),
    );
  }
}
