import 'package:flutter/material.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool leading;
  final String leadingCat;

  const MyAppbar({Key? key, required this.leading, required this.leadingCat})
    : super(key: key);

  Widget showIcon(BuildContext context, bool leading, String leadingCat) {
    if (leading) {
      if (leadingCat == 'back') {
        return Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: StarterColors.greyYoung.color,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset(
            'assets/icon/arrow_back.png',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
        );
      } else if (leadingCat == 'profile') {
        return Row(
          children: [
            SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                height: 48,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/images/profile.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        );
      }
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Image.asset('assets/icon/icon.png', height: 33),
      leadingWidth: 100,
      leading:
          leading
              ? IconButton(
                icon: showIcon(context, leading, leadingCat),
                onPressed: () {
                  if (leadingCat == 'back') Navigator.pop(context);
                  // Add logic for profile if needed
                },
              )
              : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 8); // Slightly increased height
}
