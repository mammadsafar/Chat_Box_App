import 'package:chat_box/pages/splash_screen.dart';
import 'package:chat_box/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Chat Box',
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
