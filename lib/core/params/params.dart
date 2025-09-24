class UserSignUpParams {
  final String email;
  final String password;
  final String username;

  UserSignUpParams({
    required this.email,
    required this.password,
    required this.username,
  });
}

class UserSignInParams {
  final String email;
  final String password;

  UserSignInParams({
    required this.email,
    required this.password,
  });
}