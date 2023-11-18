import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static const _primaryColorLight = Colors.lightGreenAccent;
  static const _primaryColorDark = Colors.deepPurpleAccent;

  static final lighttheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorLight),
    brightness: Brightness.light,
  );

  static final darktheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorDark),
  );

}