import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/extensions/custom_navigator_extension.dart';
import 'package:spotify_clone/core/config/routes/app_routes.dart';
import 'package:spotify_clone/core/utils/app_spaces.dart';
import 'package:spotify_clone/core/utils/assets.dart';
import 'package:spotify_clone/core/utils/size_config.dart';
import 'package:spotify_clone/core/widgets/custom_app_widget.dart';
import 'package:spotify_clone/core/widgets/custom_general_button.dart';
import 'package:spotify_clone/core/widgets/custom_lable_text.dart';
import 'package:spotify_clone/features/onboarding/presentation/manager/theme_manager.dart';
import 'package:spotify_clone/features/onboarding/presentation/widgets/custom_change_theme_widget.dart';

class OnboardingViewTwo extends StatelessWidget {
  const OnboardingViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManger = context.read<ThemeManager>();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
              Assets.assetsImagesChooseModeBg,
            ),
            // Container(
            //   width: double.infinity,
            //   height: double.infinity,
            //   color: Colors.black.withOpacity(0.7),
            // ),
            Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.blockWidth * 10,
                right: SizeConfig.blockWidth * 10,
                top: SizeConfig.blockHeight * 2,
                bottom: SizeConfig.blockHeight * 5,
              ),
              child: Column(
                children: [
                  const CustomAppWidget(),
                  const Spacer(),
                  const VerticalSpace(height: 20),
                  CustomLableText(text: "Choose Mode"),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomChangeThemeWidget(
                        text: "Dark Mode",
                        icon: Icons.dark_mode_outlined,
                        onPressed: () {
                          themeManger.changeAppTheme(ThemeMode.dark);
                        },
                        color: Colors.black.withOpacity(0.8),
                      ),
                      CustomChangeThemeWidget(
                        text: "Light Mode",
                        icon: Icons.light_mode_outlined,
                        onPressed: () {
                          themeManger.changeAppTheme(ThemeMode.light);
                        },
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ],
                  ),

                  const Spacer(),
                  CustomGeneralButton(
                    text: "Continue",
                    onPressed: () {
                      context.pushScreen(AppRoutes.chooseAuth);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
