import 'package:get_it/get_it.dart';
import 'package:spotify_clone/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:spotify_clone/features/auth/data/source/remote/auth_remote_data_source.dart';
import 'package:spotify_clone/features/auth/domain/repositories/auth_repo.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<AuthRepo>(
    AuthRepoImpl(remoteDataSource: AuthRemoteDataSource()),
  );
}
