import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:assignment_flutter_developer_wedevs/pages/account_page.dart';
import 'package:assignment_flutter_developer_wedevs/pages/home.dart';
import 'package:assignment_flutter_developer_wedevs/pages/login_page.dart';
import 'package:assignment_flutter_developer_wedevs/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          background: backgroundColor,
        ),
        useMaterial3: true,
      ),
      home: const AccountPage(),
    );
  }
}
