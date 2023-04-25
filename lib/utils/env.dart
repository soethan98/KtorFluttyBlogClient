import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'GOOGLE_CLOUD_API_KEY')
  static const googleCloudApiKey = _Env.googleCloudApiKey;
}
