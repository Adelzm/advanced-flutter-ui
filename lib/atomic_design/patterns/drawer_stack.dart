import 'package:flutter/material.dart';

class DrawerStack extends StatelessWidget {
  const DrawerStack({
    super.key,
    required this.backgroundWidget,
    required this.foregroundWidget,
  });

  final Widget backgroundWidget;
  final Widget foregroundWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [backgroundWidget, foregroundWidget],
    );
  }
}
