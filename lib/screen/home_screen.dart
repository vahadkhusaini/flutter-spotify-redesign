import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_appbar.dart';
import 'package:flutter_starter/components/my_navbar.dart';
import 'package:flutter_starter/screen/discover_screen.dart';
import 'package:flutter_starter/screen/favorite_screen.dart';
import 'package:flutter_starter/screen/feed_screen.dart';
import 'package:flutter_starter/screen/profile_screen.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customBar() {
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: StarterColors.greyNav.color.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2), // changes position of shadow
            ),
          ],
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyNavbar(
              iconPath: 'assets/icon/home_nav.png',
              label: '',
              index: 0,
              currentIndex: currentIndex,
              onTap: () {
                // Handle home tap
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            MyNavbar(
              iconPath: 'assets/icon/discover_nav.png',
              label: '',
              index: 1,
              currentIndex: currentIndex,
              onTap: () {
                // Handle home tap
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            MyNavbar(
              iconPath: 'assets/icon/heart_nav.png',
              label: '',
              index: 2,
              currentIndex: currentIndex,
              onTap: () {
                // Handle home tap
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            MyNavbar(
              iconPath: 'assets/icon/profile_nav.png',
              label: '',
              index: 3,
              currentIndex: currentIndex,
              onTap: () {
                // Handle home tap
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
          ],
        ),
      );
    }

    Widget bodyContent() {
      switch (currentIndex) {
        case 0:
          return FeedScreen();
        case 1:
          return DiscoverScreen();
        case 2:
          return FavoriteScreen();
        case 3:
          return ProfileScreen();
        default:
          return FeedScreen();
      }
    }

    return Scaffold(
      extendBody: true,
      body: bodyContent(),
      bottomNavigationBar: customBar(),
    );
  }
}
