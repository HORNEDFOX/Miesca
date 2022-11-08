import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../textstyle/text_style.dart';
import 'colors_dark.dart';
import 'colors_light.dart';

final lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  ),
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: lightPrimary,
      onPrimary: lightPrimaryText,
      secondary: lightSecondary,
      onSecondary: lightPrimaryText,
      error: lightSecondaryText,
      onError: lightSecondaryText,
      background: lightBackground,
      onBackground: lightBackground,
      surface: lightSecondaryText,
      onSurface: lightSecondaryText),
  primaryColor: lightPrimary,
  backgroundColor: lightBackground,
  textTheme: TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    bodyText1: bodytext1,
    bodyText2: bodytext2,
  ),
);

final darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  ),
  primaryColor: darkPrimary,
  backgroundColor: darkBackground,
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: darkPrimary,
      onPrimary: darkSecondaryText, //TextColor
      secondary: darkSecondary,
      onSecondary: darkBackgroundCard,
      error: darkPrimaryText,
      onError: darkPrimaryText,
      background: darkBackground,
      onBackground: darkBackgroundCard,
      surface: darkBackgroundCard, //AppBarColor
      onSurface: darkSecondaryText, //AppBarTextColor
),
  textTheme: TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    bodyText1: bodytext1,
    bodyText2: bodytext2,
  ),
);
