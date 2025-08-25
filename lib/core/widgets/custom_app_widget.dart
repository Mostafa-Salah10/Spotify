import 'package:flutter/material.dart';
import 'package:spotify/core/utils/app_strings.dart';
import 'package:spotify/core/utils/assets.dart';

class CustomAppWidget extends StatelessWidget {
  const CustomAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsImagesAppLogog,
          width: 70,
          height: 70,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 6),
        Text(
          AppStrings.appName,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}