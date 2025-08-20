import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_appbar.dart';
import 'package:flutter_starter/components/my_button.dart';
import 'package:flutter_starter/components/my_textfield.dart';
import 'package:flutter_starter/static/navigation_route.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(leading: true, leadingCat: 'back'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                RichText(
                  text: TextSpan(
                    text: 'If You Need Support? ',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: 'Click Here',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: StarterColors.lime.color,
                          fontSize: 14,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/signup');
                              },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                MyTextfield(
                  label: 'Enter Username Or Email',
                  obscureText: false,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
                    }
                    return null;
                  },
                ),
                MyTextfield(
                  label: 'Password',
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
                    }
                    return null;
                  },
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Recovery Password',
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall?.copyWith(fontSize: 14),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                      context,
                                      '/recover-password',
                                    );
                                  },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                MyButton(
                  text: 'Sign In',
                  height: 80,
                  iconPath: '',
                  color: StarterColors.lime.color,
                  style:
                      Theme.of(
                        context,
                      ).textTheme.titleLarge?.copyWith(color: Colors.white) ??
                      TextStyle(color: Colors.white),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      NavigationRoute.homeRoute.name,
                    );
                  },
                ),
                Text(
                  'Or',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/icon/google_icon.png',
                        width: 28,
                        height: 28,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 30),
                    IconButton(
                      icon: Image.asset(
                        'assets/icon/apple_icon.png',
                        width: 28,
                        height: 28,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),

                RichText(
                  text: TextSpan(
                    text: 'Not A Member? ',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: 'Register Now',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: StarterColors.blue.color,
                          fontSize: 14,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                  context,
                                  NavigationRoute.registerRoute.name,
                                );
                              },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
