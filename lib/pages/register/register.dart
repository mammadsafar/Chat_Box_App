import 'package:chat_box/pages/register/login.dart';
import 'package:chat_box/pages/register/signup.dart';
import 'package:chat_box/pages/widgets/divider_or.dart';
import 'package:chat_box/pages/widgets/sso_login.dart';
import 'package:flutter/material.dart';

import 'dart:ui' as ui;

class RegisterPage extends StatelessWidget {
  static String routeName = '/register';
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1E1E1E),
        body: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              child: SizedBox(
                child: BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Image.asset(
                    fit: BoxFit.fitWidth,
                    'assets/icons/Linner_Purple_in_Login.png',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        width: size.width * 0.2,
                        'assets/icons/Logo -uihut (1).png',
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const SizedBox(height: 45),
                      SizedBox(
                        // padding: const EdgeInsets.only(top: 45),
                        width: size.width * 0.8,
                        child: const Column(
                          children: [
                            Text(
                              'Connect friends',
                              style: TextStyle(
                                fontFamily: 'carosLight',
                                height: 1.2,
                                fontSize: 75,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'easily & quickly',
                              style: TextStyle(
                                fontFamily: 'carosBold',
                                height: 1.2,
                                fontSize: 75,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Our chat app is the perfect way to stay connected with friends and family.',
                              style: TextStyle(
                                fontFamily: 'circularStd',
                                fontSize: 17,
                                color: Color(0xFFB9C1BE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginWithWidget(
                        icon: 'assets/icons/Facebook-f_Logo-Blue-Logo.wine.png',
                        borderColor: Colors.white,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 20),
                      LoginWithWidget(
                        icon: 'assets/icons/Google_Pay-Logo.wine (1).png',
                        borderColor: Colors.white,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 20),
                      LoginWithWidget(
                        icon: 'assets/icons/Apple_Inc.-Logo.wine (1).png',
                        borderColor: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  DividerOrWidget(size: size),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: size.width * 0.9,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign up with Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'circularStd',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Existing account?',
                        style: TextStyle(
                          color: Color(0xFFB9C1BE),
                          fontFamily: 'circularStd',
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'circularStd',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
