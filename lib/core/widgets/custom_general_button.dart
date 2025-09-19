import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({
    super.key,
    this.color,
    required this.text,
    this.onPressed,
    this.fixed = false,
  });
  final Color? color;
  final String text;
  final bool fixed;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? AppColors.primaryColor,
      minWidth: fixed ? null : double.infinity,
      height: 60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 5),
      ),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}
