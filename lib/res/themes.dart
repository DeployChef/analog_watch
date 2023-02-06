// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:analog_watch/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final base = ThemeData.light();

    return base.copyWith(
      primaryColor: kPrimaryColor,
      accentColor: kAccentLightColor,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        secondary: Colors.lightBlue,
        // on light theme surface = Colors.white by default
        shadow: Colors.grey,
        inversePrimary: Colors.black,
      ),
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: kBodyTextColorLight),
      accentIconTheme: IconThemeData(color: kAccentIconLightColor),
      primaryIconTheme: IconThemeData(color: Colors.blue),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
        bodyText1: const TextStyle(color: kBodyTextColorLight),
        bodyText2: const TextStyle(color: kBodyTextColorLight),
        headline4: const TextStyle(color: kBodyTextColorLight, fontSize: 32),
        headline1: const TextStyle(color: Colors.blue, fontSize: 80),
      ),
    );
  }

  static ThemeData get darkTheme {
    final base = ThemeData.dark();

    return base.copyWith(
      primaryColor: kPrimaryColor,
      accentColor: Colors.white,
      scaffoldBackgroundColor: kBackgroundDarkColor,
      colorScheme: ColorScheme.light(
        secondary: Colors.red,
        surface: kSurfaceDarkColor,
        shadow: Colors.black,
        inversePrimary: Colors.white,
      ),
      backgroundColor: kBackgroundDarkColor,
      iconTheme: const IconThemeData(color: kBodyTextColorDark),
      accentIconTheme: IconThemeData(color: kAccentIconDarkColor),
      primaryIconTheme: IconThemeData(color: Colors.white),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
        bodyText1: const TextStyle(color: kBodyTextColorDark),
        bodyText2: const TextStyle(color: kBodyTextColorDark),
        headline4: const TextStyle(color: kTitleTextDarkColor, fontSize: 32),
        headline1: const TextStyle(color: kTitleTextDarkColor, fontSize: 80),
      ),
    );
  }
}
