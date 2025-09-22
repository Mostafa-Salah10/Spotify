import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/widgets/custom_general_button.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_text_form_field.dart';

class CustomRegisterForm extends StatelessWidget {
  const CustomRegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(hint: "Full Name", onChanged: (value) {}),
          SizedBox(height: 15),
          CustomTextFormField(hint: "Email", onChanged: (email) {}),
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
          CustomGeneralButton(text: "Create Account", onPressed: () {}),
        ],
      ),
    );
  }
}
