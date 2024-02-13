import 'package:chat_box/pages/register/register.dart';
import 'package:chat_box/pages/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const SplashScreen(),
  RegisterPage.routeName: (context) => const RegisterPage(),
};
