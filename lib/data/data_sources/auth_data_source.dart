import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:ktorfluttyblog_client/utils/env.dart';

abstract class AuthDataSource {
  Future<void> loginWithGoogle();
}

@LazySingleton(as: AuthDataSource)
class AuthDataSourceImpl extends AuthDataSource {
  final GoogleSignIn googleSignIn;

  AuthDataSourceImpl({required this.googleSignIn});

  @override
  Future<void> loginWithGoogle() async {
    final result = await googleSignIn.signIn();
    final auth = await result?.authentication;
    print('${auth?.idToken}');
  }
}
