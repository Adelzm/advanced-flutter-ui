import 'package:complex_ui/shared/patterns/action_app_bar.dart';
import 'package:complex_ui/atomic_design/atoms/drawer_background.dart';
import 'package:complex_ui/atomic_design/atoms/drawer_foreground.dart';
import 'package:complex_ui/atomic_design/atoms/drawer_animation.dart';
import 'package:complex_ui/atomic_design/patterns/drawer_stack.dart';
import 'package:flutter/material.dart';

class AtomicDrawerPage extends StatefulWidget {
  const AtomicDrawerPage({super.key});

  @override
  State<AtomicDrawerPage> createState() => _AtomicDrawerPageState();
}

class _AtomicDrawerPageState extends State<AtomicDrawerPage> with SingleTickerProviderStateMixin {
  var scale = 0.9;
  var dx = 120.0;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  void toggle() => _animationController.isDismissed ? _animationController.forward() : _animationController.reverse();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ActionAppBar(
        title: 'Atomic Drawer',
        actionIconData: Icons.menu,
        onPressedAction: () => toggle(),
      ),
      body: DrawerStack(
        backgroundWidget: DrawerBackground(
          onPressedItem1: () {},
          onPressedItem2: () {},
          onPressedItem3: () {},
        ),
        foregroundWidget: DrawerAnimation(
          scale: scale,
          horizontalOffset: dx,
          animationController: _animationController,
          child: const DrawerForeground(imagePath: 'assets/images/good_dog.jpeg'),
        ),
      ),
    );
  }
}
