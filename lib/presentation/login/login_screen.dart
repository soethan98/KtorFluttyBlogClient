import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ktorfluttyblog_client/presentation/login/login_controller.dart';
import 'package:ktorfluttyblog_client/widgets/google_sign_in_button.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/google_svg.svg',
              width: 120,
              height: 120,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Sign in to Continue',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'If you want to access this app,\n first you need to sign in.',
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            GoogleSignInButton(
              isLoading: state.isLoading,
              onPressed: () async {
                ref.read(loginControllerProvider.notifier).loginWithGoogle();
              },
            )
          ],
        ),
      ),
    );
  }
}
