import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/errors/failure.dart';
import 'package:spotify_clone/core/params/params.dart';
import 'package:spotify_clone/features/auth/domain/repositories/auth_repo.dart';

class SignIn {
  final AuthRepo authRepo;
  SignIn({required this.authRepo});

  Future<Either<Failure, void>> call({
    required UserSignInParams userSignInParams,
  }) async {
    return authRepo.signIn(userSignInParams: userSignInParams);
  }
}
