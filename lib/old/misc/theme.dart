// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';

final myTheme = ThemeData.dark().copyWith(
  colorScheme: const ColorScheme.dark(
    primary: Color(0xff116466),
    secondary: Color(0xffd9b08c),
    tertiary: Color(0xff2c3531),
  ),
);

abstract class CustomTheme {
  static const grey = Color(0xff2c3531);
  static const cyan = Color(0xff116466);
  static const gold = Color(0xffd9b08c);
  static const gold_light = Color(0xffffcb9a);
  static const white = Color(0xffd1e8e2);
  static const homeShadowColor = gold;
  static final myTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: grey,
      onPrimary: white,
      secondary: cyan,
      onSecondary: white,
      tertiary: grey,
      onTertiary: white,
      error: gold_light,
      onError: cyan,
      background: grey,
      onBackground: white,
      surface: gold,
      onSurface: grey,
    ),
  );
}
