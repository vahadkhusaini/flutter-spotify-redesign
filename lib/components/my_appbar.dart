import 'package:flutter/material.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool leading;
  final String leadingCat;
  String actionCat;

  MyAppbar({
    Key? key,
    required this.leading,
    required this.leadingCat,
    this.actionCat = '',
  }) : super(key: key);

  Widget showIcon(BuildContext context, bool leading, String leadingCat) {
    if (leading) {
      if (leadingCat == 'back') {
        return Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? StarterColors.greyYoung.color
                    : Colors.grey[800],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset(
            'assets/icon/arrow_back.png',
            width: 24,
            height: 24,
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colors.white
                    : Colors.grey[300],
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
      } else if (leadingCat == 'search') {
        return Image.asset(
          'assets/icon/search.png',
          width: 24,
          height: 24,
          color:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.black87
                  : Colors.white,
        );
      }
    }
    return const SizedBox.shrink();
  }

  Widget showActionIcon(BuildContext context, String actionCat) {
    if (actionCat == 'others') {
      return Image.asset(
        'assets/icon/others.png',
        width: 24,
        height: 24,
        color:
            Theme.of(context).brightness == Brightness.light
                ? Colors.black87
                : Colors.white,
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      actions: [showActionIcon(context, actionCat), SizedBox(width: 30)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 8); // Slightly increased height
}
