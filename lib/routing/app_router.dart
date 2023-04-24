import 'package:go_router/go_router.dart';
import 'package:ktorfluttyblog_client/login_screen.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppRoute { login, home }

GoRouter router() {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const LoginScreen(),
    )
  ]);
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return router();
});
