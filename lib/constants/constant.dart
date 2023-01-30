import 'package:blog_application/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class MyAppThemeConfig {
  static const primaryTextColor = Color(0xff0D253C);
  static const secondaryTextColor = Color(0xff2D4379);
  static const primaryColor = Color(0xff376AED);

  ThemeData getTheme() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontFamily: FontFamily.avenir,
              fontWeight: FontWeight.w400,
              color: primaryColor,
            ),
          ),
        ),
      ),
      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontFamily: FontFamily.avenir,
          color: secondaryTextColor,
          fontSize: 19,
          fontWeight: FontWeight.w800,
        ),
        titleSmall: TextStyle(
          fontFamily: FontFamily.avenir,
          color: primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          fontFamily: FontFamily.avenir,
          fontSize: 20,
          color: primaryTextColor,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          fontFamily: FontFamily.avenir,
          fontWeight: FontWeight.bold,
          color: primaryTextColor,
          fontSize: 18,
        ),
        headlineMedium: TextStyle(
          fontFamily: FontFamily.avenir,
          fontSize: 24,
          color: primaryTextColor,
          fontWeight: FontWeight.w700,
        ),
        bodySmall: TextStyle(
          fontFamily: FontFamily.avenir,
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: Color(0xff7B8BB2),
        ),
        bodyLarge: TextStyle(
          fontFamily: FontFamily.avenir,
          color: primaryTextColor,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          fontFamily: FontFamily.avenir,
          color: secondaryTextColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        onPrimary: Colors.white,
        surface: Colors.white,
        onSurface: primaryTextColor,
        background: Color(0xffFBFCFF),
        onBackground: primaryTextColor,
      ),
    );
  }
}
