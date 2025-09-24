import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/core/params/params.dart';

/// in this file you hadle all logic of remote data source

class AuthRemoteDataSource {
  // Implementation of remote data source methods for authentication
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signIn(UserSignInParams userSignInParams) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: userSignInParams.email,
        password: userSignInParams.password,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signUp(UserSignUpParams userSignUpParams) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: userSignUpParams.email,
        password: userSignUpParams.password,
      );
    } catch (e) {
      rethrow;
    }
  }
}
