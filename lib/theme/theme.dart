import 'package:flutter/material.dart';
import 'package:tenismenanagement/ui/colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  primaryColorDark: Colors.black,
  primaryColorLight: Colors.white,
  appBarTheme: AppBarTheme(
      backgroundColor: CustomColors().appBarBackgroundColor
  ),
  colorScheme: ColorScheme.light(
    background: CustomColors().clr,
    primary: CustomColors().appBarBackgroundColor,
    secondary: CustomColors().splashbackground,
  ),

);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: Colors.black,
  primaryColorLight: Colors.white,
  appBarTheme: AppBarTheme(
      backgroundColor: CustomColors().darkThemeAppColor2
  ),
  colorScheme: ColorScheme.dark(
    background: CustomColors().darkThemeBackGroundColor,
    primary: CustomColors().darkThemeAppColor,
    secondary: CustomColors().darkThemeBackGroundColor,
  ),

);