import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/utils/app_spaces.dart';
import 'package:spotify_clone/core/utils/assets.dart';

class CustomSocialAuth extends StatelessWidget {
  const CustomSocialAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.assetsImagesGoogle,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        HorizontilSpace(width: 20),
        SvgPicture.asset(
          Assets.assetsImagesApple,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}