import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ktorfluttyblog_client/di/injectable.dart';
import 'package:ktorfluttyblog_client/domain/auth_repo.dart';

class LoginController extends StateNotifier<AsyncValue<void>> {
  final AuthRepo authRepo;

  LoginController({required this.authRepo})
      : super(const AsyncValue.data(null));

  loginWithGoogle() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => authRepo.loginWithGoogle());
  }
}

final loginControllerProvider =
    StateNotifierProvider<LoginController, AsyncValue<void>>((ref) {
  return LoginController(authRepo: getIt<AuthRepo>());
});
