import 'package:flutter/material.dart';

class TextAnimation extends StatelessWidget {
  final Animation<Offset> slidingAnimation;
  const TextAnimation({super.key,required this.slidingAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) => SlideTransition(
        position: slidingAnimation,
        child: const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
