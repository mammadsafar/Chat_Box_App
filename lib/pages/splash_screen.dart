import 'package:chat_box/pages/register/register.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RegisterPage.routeName);
        },
        child: Center(
          child: Image.asset('assets/icons/Logo -uihut.png'),
        ),
      ),
    );
  }
}
