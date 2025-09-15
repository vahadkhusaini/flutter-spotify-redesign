import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_button.dart';
import 'package:flutter_starter/static/navigation_route.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class ModeScreen extends StatelessWidget {
  const ModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                // For local image:
                image: AssetImage("assets/images/mode_background.png"),
                // For network image:
                // image: NetworkImage("https://example.com/your_image.jpg"),
                fit: BoxFit.cover, // Adjusts how the image fits the container
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Image.asset('assets/icon/icon.png', width: 235, height: 71),
                  SizedBox(height: 250),
                  Text(
                    'Choose Mode',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      letterSpacing: 1.2,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: StarterColors.greyLight.color,
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icon/moon.png',
                                height: 50,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Dark Mode', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: StarterColors.greyLight.color,
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icon/sun.png',
                                height: 50,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Light Mode', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  MyButton(
                    text: 'Continue',
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
                        NavigationRoute.landingRoute.name,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
