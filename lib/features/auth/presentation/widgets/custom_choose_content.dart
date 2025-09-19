import 'package:flutter/material.dart';
import 'package:spotify_clone/core/extensions/custom_navigator_extension.dart';
import 'package:spotify_clone/core/routes/app_routes.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/app_spaces.dart';
import 'package:spotify_clone/core/utils/size_config.dart';
import 'package:spotify_clone/core/widgets/custom_app_widget.dart';
import 'package:spotify_clone/core/widgets/custom_back_button.dart';
import 'package:spotify_clone/core/widgets/custom_desc_text.dart';
import 'package:spotify_clone/core/widgets/custom_general_button.dart';
import 'package:spotify_clone/core/widgets/custom_lable_text.dart';

class CustomChooseAuthContent extends StatelessWidget {
  const CustomChooseAuthContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockWidth * 6,
        vertical: SizeConfig.blockHeight * 7,
      ),
      child: Column(
        children: [
          CustomBackButton(),
          VerticalSpace(height: 11),
          CustomAppWidget(width: 80, height: 80),
          VerticalSpace(height: 7),
          CustomLableText(
            text: "Enjoy Listening To Music",
            color: AppColors.darkbackgroundColor,
            fontSize: SizeConfig.textSize * 3,
          ),
          const SizedBox(height: 20),
          CustomDescriptionText(
            text:
                "Spotify is a proprietary Swedish audio streaming and media services provider",
          ),
          VerticalSpace(height: 6),
          Row(
            children: [
              CustomGeneralButton(
                text: "Register",
                onPressed: () {
                  context.pushScreen(AppRoutes.register);
                },
                fixed: true,
              ),
              Spacer(),
              CustomGeneralButton(
                text: "Sign in",
                fixed: true,
                onPressed: () {
                  context.pushScreen(AppRoutes.login);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
