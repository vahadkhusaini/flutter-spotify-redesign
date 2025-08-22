import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_appbar.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        leading: true,
        title: 'Discover',
        leadingCat: '',
        actionCat: 'others',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: StarterColors.pureWhite.color,
                  filled: true,
                  focusColor: StarterColors.pureWhite.color,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: StarterColors.greyLight.color,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'What do you want to listen to?',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Image.asset(
                      'assets/icon/search.png',
                      color: Colors.black,
                    ),
                  ), // Example for validation
                ),
                keyboardType:
                    TextInputType.emailAddress, // Example keyboard type
                onChanged: (text) {
                  // Handle text changes
                },
                // Other properties like obscureText, maxLength, etc.
              ),
              SizedBox(height: 20),
              Text('Browse all', style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 20),
              // Add more content here, such as cards or lists of items
              GridView.count(
                shrinkWrap: true,
                childAspectRatio: (1 / 0.6),
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2, // Menentukan 2 kolom
                children: List.generate(10, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFF6A0066),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 15,
                          child: SizedBox(
                            width: 150,
                            child: Text(
                              'Made For You',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -50,
                          top: 50,
                          child: Transform.rotate(
                            angle: 0.4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/poster/taylor2.jpeg',
                                height: 90,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
