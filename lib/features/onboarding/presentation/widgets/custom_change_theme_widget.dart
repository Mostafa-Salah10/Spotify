import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/widgets/custom_desc_text.dart';

class CustomChangeThemeWidget extends StatelessWidget {
  const CustomChangeThemeWidget({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
    required this.color,
  });

  final String text;
  final IconData icon;
  final void Function()? onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: AppColors.whiteColor, size: 35),
          ),
        ),
        const SizedBox(height: 5),
        CustomDescriptionText(text: text),
      ],
    );
  }
}
