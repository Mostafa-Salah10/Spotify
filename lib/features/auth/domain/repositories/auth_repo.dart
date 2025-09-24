import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/errors/failure.dart';
import 'package:spotify_clone/core/params/params.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> signIn({
    required UserSignInParams userSignInParams,
  });

  Future<Either<Failure, void>> signUp({
    required UserSignUpParams userSignUpParams,
  });
}
