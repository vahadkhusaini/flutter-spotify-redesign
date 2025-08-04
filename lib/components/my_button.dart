import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final Color color;
  final double height;
  final TextStyle style;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.height,
    required this.iconPath,
    required this.color,
    required this.style,
    required this.onTap,
  });

  Widget showImage(String iconPath) {
    if (iconPath != "") {
      return Image.asset(iconPath, height: 20);
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showImage(iconPath),
            if (iconPath.isNotEmpty) const SizedBox(width: 10),
            Text(text, style: style),
          ],
        ),
      ),
    );
  }
}
