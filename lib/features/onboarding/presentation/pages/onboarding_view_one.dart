import 'package:flutter/material.dart';
import 'package:spotify/core/extensions/custom_navigator_extension.dart';
import 'package:spotify/core/routes/app_routes.dart';
import 'package:spotify/core/utils/size_config.dart';
import 'package:spotify/core/widgets/custom_app_widget.dart';
import 'package:spotify/core/widgets/custom_desc_text.dart';
import 'package:spotify/core/widgets/custom_general_button.dart';
import 'package:spotify/core/widgets/custom_lable_text.dart';

class OnboardingViewOne extends StatelessWidget {
  const OnboardingViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.network(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
              'https://m.media-amazon.com/images/M/MV5BYTk1ZjlmYTQtZTA3ZS00NTAwLTkyZGItNDFkYzU4OWU1ZmNkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.7),
            ),
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
                  CustomLableText(text: "Enjoy Listening To Music"),
                  const SizedBox(height: 20),
                  CustomDescriptionText(
                    text:
                        "Discover music you love, personalized just for you and save, share, and enjoy your favorite songs anywhere.",
                  ),
                  const SizedBox(height: 35),
                  CustomGeneralButton(
                    text: "Get Started",
                    onPressed: () {
                      context.pushScreen(AppRoutes.onboardingTwo);
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
