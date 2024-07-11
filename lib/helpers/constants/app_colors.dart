
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const darkScaffoldBackGroundColor = Color(0xFF1F1F39);
  static const darkSecondary = Color(0xFF383E5E);
  static const darkGrey = Color(0xFF707070);
  static const lightGrey = Color(0xFFB1B8C7);
  static const lightWhite = Color(0xFFF3F6FD);
  static const whiteSecondary = Color(0xFFF9F9FB);
  static const white = Color(0xFFFFFFFF);
  static const primary = Color(0xFF3845AB);
  static const secondary = Color(0xFFEEA86C);
  static const lightBeige = Color(0xFFFEF4EE);
  static const greyText = Color(0xFF78789D);
  static const lightBlue = Color(0xFFE7F1FF);
  static const blue = Color(0xFF82A4D0);
  static const redColor = Color(0xFFFF2E39);
  static const greenColor = Color(0xFF24B600);
  static const black = Color(0xFF000000);
  static const lightGreyText = Color(0xFF78829D);
  static const lightPurple = Color(0xFF332C5A);
}

class AppGradiant{
  AppGradiant._();
  static var sliderGradiant = [
    AppColors.darkScaffoldBackGroundColor,
    AppColors.darkScaffoldBackGroundColor.withOpacity(0.80),
    Colors.transparent
  ];
}