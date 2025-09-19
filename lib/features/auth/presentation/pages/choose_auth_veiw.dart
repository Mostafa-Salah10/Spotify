import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/utils/assets.dart';

import 'package:spotify_clone/features/auth/presentation/widgets/custom_choose_content.dart';

class ChooseAuthVeiw extends StatelessWidget {
  const ChooseAuthVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(Assets.assetsImagesTopWave),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(Assets.assetsImagesRegisterBg),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(Assets.assetsImagesBottomWave),
          ),
          CustomChooseAuthContent(),
        ],
      ),
    );
  }
}
