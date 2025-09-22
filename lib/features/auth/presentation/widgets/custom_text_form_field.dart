import 'package:flutter/material.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/utils/size_config.dart';

class CustomTextFormField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String hint;
  final bool? isSecure;
  final IconButton? suffixIcon;

  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.validator,
    required this.hint,
    this.isSecure,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: isSecure ?? false,
      decoration: InputDecoration(
        suffixIcon: isSecure != null ? suffixIcon : null,
        contentPadding: EdgeInsets.symmetric(horizontal: 23, vertical: 20),
        errorBorder: _customBorder(color: AppColors.error),
        focusedErrorBorder: _customBorder(color: AppColors.error),
        focusedBorder: _customBorder(color: AppColors.primaryColor),
        enabledBorder: _customBorder(color: AppColors.gray),
        hintText: hint,
        hintStyle: TextStyle(color: AppColors.gray, fontSize: 14),
      ),
    );
  }

  OutlineInputBorder _customBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1),
      borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 5),
    );
  }
}
