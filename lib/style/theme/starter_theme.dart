import 'package:flutter/material.dart';
import 'package:flutter_starter/style/starter_colors.dart';
import 'package:flutter_starter/style/typography/starter_text_style.dart';

class StarterTheme {
  static AppBarTheme get _appBarTheme {
    return AppBarTheme(
      toolbarTextStyle: _textTheme.titleLarge,
      shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(14),
          bottomRight: Radius.circular(14),
        ),
      ),
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: StarterTextStyle.displayLarge,
      displayMedium: StarterTextStyle.displayMedium,
      displaySmall: StarterTextStyle.displaySmall,
      headlineLarge: StarterTextStyle.headlineLarge,
      headlineMedium: StarterTextStyle.headlineMedium,
      headlineSmall: StarterTextStyle.headlineSmall,
      titleLarge: StarterTextStyle.titleLarge,
      titleMedium: StarterTextStyle.titleMedium,
      titleSmall: StarterTextStyle.titleSmall,
      bodyLarge: StarterTextStyle.bodyLargeBold,
      bodyMedium: StarterTextStyle.bodyLargeMedium,
      bodySmall: StarterTextStyle.bodyLargeRegular,
      labelLarge: StarterTextStyle.labelLarge,
      labelMedium: StarterTextStyle.labelMedium,
      labelSmall: StarterTextStyle.labelSmall,
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      colorSchemeSeed: StarterColors.lime.color,
      brightness: Brightness.light,
      textTheme: _textTheme,
      useMaterial3: true,
      appBarTheme: _appBarTheme,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorSchemeSeed: StarterColors.lime.color,
      brightness: Brightness.dark,
      textTheme: _textTheme,
      useMaterial3: true,
      appBarTheme: _appBarTheme,
    );
  }
}
