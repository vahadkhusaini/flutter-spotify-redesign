import 'package:flutter/material.dart';
import 'package:flutter_starter/static/navigation_route.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StarterColors.grey.color,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Image.asset('assets/icon/icon.png', width: 235, height: 71),
            SizedBox(height: 50),
            Text(
              'Enjoy Listening To Music',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(letterSpacing: 1.2),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: Text(
                'Spotify is a properietary Swedish audio streaming and media services provider',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 147,
                  height: 63,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        NavigationRoute.registerRoute.name,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: StarterColors.lime.color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Register',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 147,
                  height: 63,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        NavigationRoute.loginRoute.name,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: StarterColors.lime.color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
