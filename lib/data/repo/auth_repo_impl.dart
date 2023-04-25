import 'package:injectable/injectable.dart';
import 'package:ktorfluttyblog_client/data/data_sources/auth_data_source.dart';
import 'package:ktorfluttyblog_client/domain/auth_repo.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthDataSource authDataSource;

  AuthRepoImpl({required this.authDataSource});
  @override
  Future<void> loginWithGoogle() async {
    await authDataSource.loginWithGoogle();
  }
}
