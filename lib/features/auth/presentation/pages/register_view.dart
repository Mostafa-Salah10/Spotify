import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/app_spaces.dart';
import 'package:spotify_clone/core/utils/size_config.dart';
import 'package:spotify_clone/core/widgets/custom_back_button.dart';
import 'package:spotify_clone/core/widgets/custom_lable_text.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockWidth * 6,
          vertical: SizeConfig.blockHeight * 7,
        ),
        child: Column(
          children: [
            CustomBackButton(),
            VerticalSpace(height: 11),
            CustomLableText(
              text: "Register",
              color: AppColors.darkbackgroundColor,
              fontSize: SizeConfig.textSize * 4,
            ),
          ],
        ),
      ),
    );
  }
}
