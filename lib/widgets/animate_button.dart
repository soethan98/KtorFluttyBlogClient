import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimateButton extends StatefulWidget {
  final bool isLoading;
  final VoidCallback onPressed;
  const AnimateButton(
      {super.key, required this.onPressed, this.isLoading = true});

  @override
  State<AnimateButton> createState() => _AnimateButtonState();
}

class _AnimateButtonState extends State<AnimateButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: ElevatedButton.icon(
          onPressed: () {
            _animationController.forward();
            widget.onPressed();
          },
          icon: SvgPicture.asset(
            'assets/icons/google_svg.svg',
            height: 35,
          ),
          label: widget.isLoading
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
              : const Text('Sign In With Google')),
    );
  }
}
