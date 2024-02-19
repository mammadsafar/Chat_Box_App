import 'package:chat_box/pages/register/login.dart';
import 'package:chat_box/pages/register/register.dart';
import 'package:chat_box/pages/register/signup.dart';
import 'package:chat_box/pages/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const SplashScreen(),
  RegisterPage.routeName: (context) => const RegisterPage(),
  LoginPage.routeName: (context) => const LoginPage(),
  SignUpPage.routeName: (context) => const SignUpPage(),
};
