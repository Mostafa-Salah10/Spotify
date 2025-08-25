import 'package:flutter/material.dart';
import 'package:spotify/core/utils/app_colors.dart';
import 'package:spotify/core/utils/app_styles.dart';

abstract class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgroundColor,
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
      brightness: Brightness.dark,
      textTheme: TextTheme(
        labelMedium: AppStyles.logoAppStyle,
        headlineMedium: AppStyles.lableStyle,
        bodyMedium: AppStyles.descriptionStyle,
      ),
    );
  }
}
