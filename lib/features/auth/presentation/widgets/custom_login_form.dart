import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/widgets/custom_general_button.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_text_form_field.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Enter Username Or Email",
            onChanged: (value) {},
          ),
          SizedBox(height: 15),
          CustomTextFormField(
            hint: "Password",
            onChanged: (pass) {},
            isSecure: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.visibility_off, color: AppColors.gray),
            ),
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Recovery Password",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 15),
          CustomGeneralButton(text: "Sign in", onPressed: () {}),
        ],
      ),
    );
  }
}