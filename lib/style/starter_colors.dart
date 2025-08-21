import 'package:flutter/material.dart';

enum StarterColors {
  lime("Lime", Color(0xFF42C83C)),
  grey("Grey", Color(0xFF1C1B1B)),
  greyYoung("Grey", Color(0xFF444444)),
  greyLight("GreyLight", Color(0xFF343434)),
  greyNav("GreyNav", Color(0xFF737373)),
  white("White", Color(0xFFF6F6F6)),
  pureWhite("PureWhite", Color(0xFFFFFFFF)),
  greyCard("GreyCard", Color(0xFF2B2B2B)),
  dark("dark", Color(0xFF151500)),
  blue("Blue", Color(0xFF288CE9));

  const StarterColors(this.name, this.color);

  final String name;
  final Color color;
}
