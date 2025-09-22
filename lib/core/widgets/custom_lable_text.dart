import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';

class CustomLableText extends StatelessWidget {
  const CustomLableText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
  });
  final String text;
  final Color? color;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        color: color ?? AppColors.whiteColor,
        fontSize: fontSize,
      ),
    );
  }
}
