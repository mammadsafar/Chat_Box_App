import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/icons/Logo -uihut.png'),
        // child: SvgPicture.asset(
        //   'assets/icons/logo.svg',
        //   width: 200,
        //   height: 200,
        // ),
      ),
    );
  }
}
