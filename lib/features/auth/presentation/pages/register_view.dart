import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/extensions/custom_navigator_extension.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/assets.dart';
import 'package:spotify_clone/core/utils/size_config.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: -100,
            child: SvgPicture.asset(Assets.assetsImagesTopWave),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockWidth * 6,
              vertical: SizeConfig.blockHeight * 3,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.whiteColor70,
                  child: IconButton(
                    onPressed: () {
                      context.popScreen();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
