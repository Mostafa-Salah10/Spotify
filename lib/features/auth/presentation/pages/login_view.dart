import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/app_spaces.dart';
import 'package:spotify_clone/core/utils/assets.dart';
import 'package:spotify_clone/core/utils/size_config.dart';
import 'package:spotify_clone/core/widgets/custom_lable_text.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_auth_header.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_login_form.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_text_span_widget..dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        children: [
          CustomAuthHeader(),
          VerticalSpace(height: 8),
          CustomLableText(
            text: "Sign In",
            color: AppColors.darkbackgroundColor,
            fontSize: SizeConfig.textSize * 4,
          ),
          VerticalSpace(height: 3),
          CustomTextSpanWidget(
            leadingText: "If you need any support",
            onTap: () {},
            suffixText: "Click here",
          ),
          VerticalSpace(height: 5),
          CustomLoginForm(),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: Divider(color: AppColors.gray, height: 1)),
              Text(" Or ", style: Theme.of(context).textTheme.titleMedium),
              Expanded(child: Divider(color: AppColors.gray, height: 1)),
            ],
          ),
          SizedBox(height: 15),
          Row(
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
          ),
          VerticalSpace(height: 5),
          CustomTextSpanWidget(
            onTap: () {},
            leadingText: "Not a member ?",
            suffixText: "Register now",
          ),
        ],
      ),
    );
  }
}
