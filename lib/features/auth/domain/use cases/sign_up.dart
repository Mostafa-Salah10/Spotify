import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/errors/failure.dart';
import 'package:spotify_clone/core/params/params.dart';
import 'package:spotify_clone/features/auth/domain/repositories/auth_repo.dart';

class SignUp {
  final AuthRepo authRepo;
  SignUp({required this.authRepo});

  Future<Either<Failure, void>> call({
    required UserSignUpParams userSignUpParams,
  }) async {
    return authRepo.signUp(userSignUpParams: userSignUpParams);
  }
}
