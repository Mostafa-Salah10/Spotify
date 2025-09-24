import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/errors/failure.dart';
import 'package:spotify_clone/core/params/params.dart';
import 'package:spotify_clone/features/auth/data/source/remote/auth_remote_data_source.dart';
import 'package:spotify_clone/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepoImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, void>> signIn({
    required UserSignInParams userSignInParams,
  }) async {
    try {
      await remoteDataSource.signIn(userSignInParams);
      return const Right(null);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> signUp({
    required UserSignUpParams userSignUpParams,
  }) async {
    try {
      await remoteDataSource.signUp(userSignUpParams);
      return const Right(null);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
