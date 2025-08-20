import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_appbar.dart';
import 'package:flutter_starter/components/my_button.dart';
import 'package:flutter_starter/components/my_textfield.dart';
import 'package:flutter_starter/static/navigation_route.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final fullnameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(leading: true, leadingCat: 'back'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Register',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 10),
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
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall?.copyWith(
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
                    SizedBox(height: 15),
                    MyTextfield(
                      label: 'Enter Full Name',
                      obscureText: false,
                      controller: fullnameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a fullname';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    MyTextfield(
                      label: 'Enter Email',
                      obscureText: false,
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
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
                    SizedBox(height: 30),
                    MyButton(
                      text: 'Create Account',
                      height: 80,
                      iconPath: '',
                      color: StarterColors.lime.color,
                      style:
                          Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ) ??
                          TextStyle(color: Colors.white),
                      onTap: () {
                        Navigator.pushNamed(context, '/phone-login');
                      },
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Or',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 30),
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
                        text: 'Do You Have An Account ? ',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall?.copyWith(
                              color: StarterColors.blue.color,
                              fontSize: 14,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                      context,
                                      NavigationRoute.loginRoute.name,
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
        ),
      ),
    );
  }
}
