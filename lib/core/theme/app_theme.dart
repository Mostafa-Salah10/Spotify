import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/app_styles.dart';

abstract class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: "Satoshi",
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightbackgroundColor,
      primaryColor: AppColors.primaryColor,

      textTheme: TextTheme(
        labelMedium: AppStyles.logoAppStyle,
        headlineMedium: AppStyles.lableStyle,
        bodyMedium: AppStyles.descriptionStyle,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      fontFamily: "Satoshi",
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.darkbackgroundColor,
      textTheme: TextTheme(
        labelMedium: AppStyles.logoAppStyle,
        headlineMedium: AppStyles.lableStyle,
        bodyMedium: AppStyles.descriptionStyle,
      ),
    );
  }
}
