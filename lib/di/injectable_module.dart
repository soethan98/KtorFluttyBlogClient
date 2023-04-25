import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:ktorfluttyblog_client/utils/env.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn =>
      GoogleSignIn(serverClientId: Env.googleCloudApiKey);
}
