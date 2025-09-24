part of 'auth_cubit.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSignUpLoadingState extends AuthState {}
final class AuthSignInLoadingState extends AuthState {}

final class AuthSignUpErrorState extends AuthState {
  final String errorMessage;
  AuthSignUpErrorState({required this.errorMessage});
}
final class AuthSignInErrorState extends AuthState {
  final String errorMessage;
  AuthSignInErrorState({required this.errorMessage});
}

final class AuthSignUpSuccessState extends AuthState {}
final class AuthSignInSuccessState extends AuthState {}
