import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleSignInButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;
  const GoogleSignInButton(
      {super.key, required this.onPressed, this.isLoading = true});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          'assets/icons/google_svg.svg',
          height: 35,
        ),
        label: isLoading
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Please wait...'),
                  SizedBox(
                    width: 20,
                  ),
                  CircularProgressIndicator()
                ],
              )
            : const Text('Sign In With Google'));
  }
}
