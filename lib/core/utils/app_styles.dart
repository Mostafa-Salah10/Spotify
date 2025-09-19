import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle logoAppStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: SizeConfig.textSize * 4,
    fontWeight: FontWeight.bold,
  );
  static TextStyle lableStyle = TextStyle(
    fontSize: SizeConfig.blockWidth * 6,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );
  static TextStyle descriptionStyle = TextStyle(
    fontSize: SizeConfig.blockWidth * 4,
    fontWeight: FontWeight.normal,
    color: AppColors.gray,
  );
}
