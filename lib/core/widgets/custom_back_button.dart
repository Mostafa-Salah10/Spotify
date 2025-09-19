import 'package:flutter/material.dart';
import 'package:spotify_clone/core/extensions/custom_navigator_extension.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CircleAvatar(
        radius: 17,
        backgroundColor: AppColors.whiteColor70,
        child: IconButton(
          padding: EdgeInsets.only(right: 3),
          onPressed: () {
            context.popScreen();
          },
          icon: Icon(Icons.arrow_back_ios_outlined, size: 15),
        ),
      ),
    );
  }
}
