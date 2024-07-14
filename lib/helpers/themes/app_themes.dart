import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';

class AppThemes {
  AppThemes._();

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'yekanBakh',
    scaffoldBackgroundColor: AppColors.white,
    colorScheme:  ColorScheme.dark(

      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.primary.withOpacity(0.50),
      primaryContainer: AppColors.darkSecondary,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.darkSecondary,fontSize: 16),
      bodySmall: TextStyle(color: AppColors.darkSecondary,fontSize: 14),
      titleLarge: TextStyle(color: AppColors.primary,fontWeight: FontWeight.w700,fontSize: 24),
      titleMedium: TextStyle(color: AppColors.darkSecondary,fontSize: 18,fontWeight: FontWeight.w700),
      titleSmall: TextStyle(color: AppColors.darkSecondary,fontSize: 14,fontWeight: FontWeight.w700),
    )
  );
}