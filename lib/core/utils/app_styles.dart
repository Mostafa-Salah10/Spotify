import 'package:flutter/material.dart';
import 'package:spotify/core/utils/app_colors.dart';
import 'package:spotify/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle logoAppStyle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: SizeConfig.textSize * 4,
    fontWeight: FontWeight.bold,
  );
}
