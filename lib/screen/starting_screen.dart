import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_button.dart';
import 'package:flutter_starter/static/navigation_route.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                // For local image:
                image: AssetImage("assets/images/ariana_background.png"),
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
                  SizedBox(height: 330),
                  Text(
                    'Enjoy Listening To Music',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(letterSpacing: 1.2),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 400,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua aliquam.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  MyButton(
                    text: 'Get Started',
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
                        NavigationRoute.modeRoute.name,
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
