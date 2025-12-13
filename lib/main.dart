import 'package:flutter/material.dart';
import 'package:flutter_starter/screen/home_screen.dart';
import 'package:flutter_starter/screen/landing_screen.dart';
import 'package:flutter_starter/screen/login_screen.dart';
import 'package:flutter_starter/screen/mode_screen.dart';
import 'package:flutter_starter/screen/register_screen.dart';
import 'package:flutter_starter/screen/splash_screen.dart';
import 'package:flutter_starter/static/navigation_route.dart';
import 'package:flutter_starter/style/theme/starter_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Starter',
      theme: StarterTheme.darkTheme,
      darkTheme: StarterTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: NavigationRoute.mainRoute.name,
      debugShowCheckedModeBanner: false,
      routes: {
        NavigationRoute.loginRoute.name: (context) => LoginScreen(),
        NavigationRoute.registerRoute.name: (context) => RegisterScreen(),
        NavigationRoute.landingRoute.name: (context) => const LandingScreen(),
        NavigationRoute.homeRoute.name: (context) => const HomeScreen(),
        NavigationRoute.modeRoute.name: (context) => const ModeScreen(),
        NavigationRoute.mainRoute.name:
            (context) => const HomeScreen(), // Placeholder for main route
      },
    );
  }
}
