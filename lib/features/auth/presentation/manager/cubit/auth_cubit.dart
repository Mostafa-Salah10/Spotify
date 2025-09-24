import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/params/params.dart';
import 'package:spotify_clone/core/service/service_locator.dart';
import 'package:spotify_clone/features/auth/domain/repositories/auth_repo.dart';
import 'package:spotify_clone/features/auth/domain/use%20cases/sign_in.dart';
import 'package:spotify_clone/features/auth/domain/use%20cases/sign_up.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  //this cubit trigger the use cases

  ///sign up user with email and password
  Future<void> signUpUser(UserSignUpParams userSignUpParams) async {
    emit(AuthSignUpLoadingState());

    final response = await SignUp(
      authRepo: sl<AuthRepo>(),
    ).call(userSignUpParams: userSignUpParams);

    response.fold(
      (error) {
        emit(AuthSignUpErrorState(errorMessage: error.message));
      },
      (res) {
        emit(AuthSignUpSuccessState());
      },
    );
  }

  ///sign in user with email and password
  Future<void> signInUser(UserSignInParams userSignInParams) async {
    emit(AuthSignInLoadingState());

    final response = await SignIn(
      authRepo: sl<AuthRepo>(),
    ).call(userSignInParams: userSignInParams);

    response.fold(
      (error) {
        emit(AuthSignInErrorState(errorMessage: error.message));
      },
      (res) {
        emit(AuthSignInSuccessState());
      },
    );
  }
}
