import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_strings.dart';
import 'package:spotify_clone/core/utils/assets.dart';
import 'package:spotify_clone/core/utils/size_config.dart';

class CustomAppWidget extends StatelessWidget {
  const CustomAppWidget({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsImagesAppLogo,
          width: width ?? 70,
          height: height ?? 70,

          fit: BoxFit.cover,
        ),
        const SizedBox(width: 6),
        Text(
          AppStrings.appName,
          style: width == null
              ? Theme.of(context).textTheme.labelMedium
              : Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: SizeConfig.textSize * 5,
                ),
        ),
      ],
    );
  }
}
