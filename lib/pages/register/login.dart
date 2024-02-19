import 'package:chat_box/pages/widgets/divider_or.dart';
import 'package:chat_box/pages/widgets/sso_login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool emailValid = false;
  bool passwordValid = false;
  bool formValid = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/icons/Back_arrow.jpg'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: 10,
                          width: 62,
                          color: const Color(0xff58C3B6),
                        ),
                      ),
                      const Text(
                        'Log in',
                        style: TextStyle(
                          fontFamily: 'carosBold',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    ' to ChatBox',
                    style: TextStyle(
                      fontFamily: 'carosBold',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: size.width * 0.8,
                child: const Text(
                  'Welcome back! Sign in using your social account or email to continue us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'circularStd',
                    fontSize: 17,
                    color: Color(0xff797C7B),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginWithWidget(
                    icon: 'assets/icons/Facebook-f_Logo-Blue-Logo.wine.png',
                    borderColor: Colors.black,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  LoginWithWidget(
                    icon: 'assets/icons/Google_Pay-Logo.wine (1).png',
                    borderColor: Colors.black,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  LoginWithWidget(
                    icon: 'assets/icons/apple.png',
                    borderColor: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DividerOrWidget(size: size),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color(0xffCDD1D0),
                          ),
                        ),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            if (value == '' || value.isEmpty) {
                              formValid = false;
                              emailValid = false;
                            } else {
                              emailValid = true;
                            }
                            if (emailValid && passwordValid) {
                              formValid = true;
                            } else {
                              formValid = false;
                            }
                          });
                        },
                        decoration: const InputDecoration(
                          labelText: 'Your email',
                          labelStyle: TextStyle(color: Color(0xff24786D)),
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Email';
                          }

                          return null;
                        },
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color(0xffCDD1D0),
                          ),
                        ),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          setState(() {
                            if (value == '' || value.isEmpty) {
                              formValid = false;
                              passwordValid = false;
                            } else {
                              passwordValid = true;
                            }
                            if (emailValid && passwordValid) {
                              formValid = true;
                            } else {
                              formValid = false;
                            }
                          });
                        },
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xff24786D),
                          ),
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 190),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      formValid = true;
                    });
                  }
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: formValid
                        ? const Color(0xff24786D)
                        : const Color(0xffF3F6F6),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  width: size.width * 0.9,
                  child: Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          color: formValid
                              ? const Color(0xffF3F6F6)
                              : const Color(0xff797C7B),
                          fontSize: 20,
                          fontFamily: 'CarosBold'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  width: size.width * 0.9,
                  child: const Center(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color(0xff24786D),
                          fontSize: 20,
                          fontFamily: 'CarosBold'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
