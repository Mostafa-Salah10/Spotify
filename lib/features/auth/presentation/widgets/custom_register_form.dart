import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/functions/validation_form_field.dart';
import 'package:spotify_clone/core/params/params.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/widgets/custom_general_button.dart';
import 'package:spotify_clone/features/auth/presentation/manager/cubit/auth_cubit.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_text_form_field.dart';

class CustomRegisterForm extends StatelessWidget {
  const CustomRegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    String name = '';
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSignUpErrorState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return Form(
          key: cubit.signUpKey,
          child: Column(
            children: [
              CustomTextFormField(
                hint: "Full Name",
                onChanged: (value) {
                  name = value;
                },
                validator: (name) => validateFormField(value: name),
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                hint: "Email",
                onChanged: (email) {
                  email = email;
                },
                validator: (email) => validateFormField(value: email),
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                hint: "Password",
                onChanged: (pass) {
                  password = pass;
                },
                validator: (pass) => validateFormField(value: pass),
                isSecure: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off, color: AppColors.gray),
                ),
              ),
              SizedBox(height: 15),

              state is AuthSignUpLoadingState
                  ? const CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomGeneralButton(
                      text: "Create Account",
                      onPressed: () {
                        if (cubit.signUpKey.currentState!.validate()) {
                          cubit.signUpUser(
                            UserSignUpParams(
                              email: email,
                              password: password,
                              username: name,
                            ),
                          );
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
