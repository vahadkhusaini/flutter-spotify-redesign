import 'package:flutter/material.dart';
import 'package:flutter_starter/style/starter_colors.dart';

// ignore: must_be_immutable
class MyNavbar extends StatefulWidget {
  String iconPath;
  String label;
  int index;
  int currentIndex;
  VoidCallback onTap;

  MyNavbar({
    super.key,
    required this.iconPath,
    required this.label,
    required this.index,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        width: 100,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 4,
              width: 23,
              decoration: BoxDecoration(
                color:
                    widget.index == widget.currentIndex
                        ? StarterColors.lime.color
                        : Colors.transparent,
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(100),
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              widget.iconPath.toString(),
              height: 28,
              width: 28,
              color:
                  widget.index == widget.currentIndex
                      ? StarterColors.lime.color
                      : StarterColors.greyNav.color,
            ),
            const SizedBox(height: 5),
            Text(
              widget.label.toString(),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color:
                    widget.index == widget.currentIndex
                        ? StarterColors.lime.color
                        : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
