import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationEx extends StatefulWidget {
  const AnimationEx({super.key});

  @override
  State<AnimationEx> createState() => _AnimationExState();
}

class _AnimationExState extends State<AnimationEx> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          return Transform.rotate(
            angle: _animationController.value * 2 * math.pi,
            child: Image.asset(
              'assets/images/happy_dog.jpg',
              fit: BoxFit.cover,
            ),
          );
        });
  }
}
