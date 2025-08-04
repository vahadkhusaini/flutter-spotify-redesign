import 'package:flutter/material.dart';

enum StarterColors {
  lime("Lime", Color(0xFF42C83C)),
  grey("Grey", Color(0xFF1C1B1B)),
  greyYoung("Grey", Color(0xFF444444)),
  blue("Blue", Color(0xFF288CE9));

  const StarterColors(this.name, this.color);

  final String name;
  final Color color;
}
