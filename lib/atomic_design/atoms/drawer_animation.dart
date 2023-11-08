import 'package:flutter/material.dart';

class DrawerAnimation extends StatelessWidget {
  const DrawerAnimation({
    super.key,
    required AnimationController animationController,
    required this.scale,
    required this.horizontalOffset,
    required this.child,
  }) : _animationController = animationController;

  final AnimationController _animationController;
  final double scale;
  final double horizontalOffset;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          return Transform(
            transform: Matrix4.identity()
              ..scale(1 - _animationController.value * (1 - scale))
              ..translate(horizontalOffset * _animationController.value),
            alignment: Alignment.bottomLeft,
            child: child,
          );
        });
  }
}
