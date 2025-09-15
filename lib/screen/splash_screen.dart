import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_starter/screen/landing_screen.dart';
import 'package:flutter_starter/screen/starting_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      // Durasi 5 detik
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => StartingScreen(),
        ), // Ganti HomeScreen dengan halaman Anda
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/icon/icon.png', width: 235, height: 71),
      ),
    );
  }
}
