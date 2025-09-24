import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/functions/validation_form_field.dart';
import 'package:spotify_clone/core/params/params.dart';
import 'package:spotify_clone/core/utils/app_colors.dart';
import 'package:spotify_clone/core/widgets/custom_general_button.dart';
import 'package:spotify_clone/features/auth/presentation/manager/cubit/auth_cubit.dart';
import 'package:spotify_clone/features/auth/presentation/widgets/custom_text_form_field.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
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
          key: cubit.signInKey,
          child: Column(
            children: [
              CustomTextFormField(
                hint: "Enter Username Or Email",
                onChanged: (value) {
                  email = value;
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recovery Password",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 15),
              state is AuthSignUpLoadingState
                  ? const CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomGeneralButton(
                      text: "Sign in",
                      onPressed: () {
                        if (cubit.signInKey.currentState!.validate()) {
                          cubit.signInUser(
                            UserSignInParams(email: email, password: password),
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
