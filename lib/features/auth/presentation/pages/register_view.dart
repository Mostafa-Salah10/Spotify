import 'package:flutter/material.dart';
import 'package:spotify_clone/core/extensions/custom_navigator_extension.dart';
import 'package:spotify_clone/core/routes/app_routes.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/app_spaces.dart';
import 'package:spotify_clone/core/utils/size_config.dart';
import 'package:spotify_clone/core/widgets/custom_lable_text.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_auth_header.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_register_form.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_social_auth.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_text_span_widget..dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        children: [
          CustomAuthHeader(),
          VerticalSpace(height: 8),
          CustomLableText(
            text: "Register",
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
          CustomRegisterForm(),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: Divider(color: AppColors.gray, height: 1)),
              Text(" Or ", style: Theme.of(context).textTheme.titleMedium),
              Expanded(child: Divider(color: AppColors.gray, height: 1)),
            ],
          ),
          SizedBox(height: 15),
          CustomSocialAuth(),
          VerticalSpace(height: 5),
          CustomTextSpanWidget(
            onTap: () {
              context.pushReplacementScreen(AppRoutes.login);
            },
            leadingText: "Do you have an account ? ",
            suffixText: "sign In",
          ),
        ],
      ),
    );
  }
}


