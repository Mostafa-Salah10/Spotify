import 'package:flutter/material.dart';
import 'package:spotify_clone/core/widgets/custom_app_widget.dart';
import 'package:spotify_clone/core/widgets/custom_back_button.dart';

class CustomAuthHeader extends StatelessWidget {
  const CustomAuthHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBackButton(),
        CustomAppWidget(height: 40, width: 40, fontSize: 3),
        SizedBox(),
      ],
    );
  }
}
