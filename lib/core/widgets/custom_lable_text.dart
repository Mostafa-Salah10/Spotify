import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';

class CustomLableText extends StatelessWidget {
  const CustomLableText({super.key, required this.text, this.color});
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        color: color ?? AppColors.whiteColor,
      ),
    );
  }
}
