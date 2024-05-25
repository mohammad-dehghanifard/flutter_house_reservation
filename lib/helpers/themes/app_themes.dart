import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class AppThemes {
  AppThemes._();

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'yekanBakh',
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.white,
      primaryContainer: AppColors.darkSecondary
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.darkSecondary,fontSize: 14.sp),
      bodySmall: TextStyle(color: AppColors.darkSecondary,fontSize: 10.sp),
      titleLarge: TextStyle(color: AppColors.primary,fontWeight: FontWeight.w700,fontSize: 18.sp)
    )
  );
}