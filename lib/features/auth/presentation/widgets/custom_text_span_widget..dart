import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';

class CustomTextSpanWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String leadingText;
  final String suffixText;

  const CustomTextSpanWidget({
    super.key,
    required this.onTap,
    required this.leadingText,
    required this.suffixText,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(leadingText, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(width: 4),
        GestureDetector(
          onTap: onTap,
          child: Text(suffixText, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.primaryColor)),
        ),
      ],
    );
  }
}
