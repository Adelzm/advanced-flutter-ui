import 'package:complex_ui/shared/patterns/action_app_bar.dart';
import 'package:complex_ui/atomic_design/atoms/drawer_animation.dart';
import 'package:complex_ui/atomic_design/patterns/drawer_stack.dart';
import 'package:flutter/material.dart';

class DrawerPageTemplate extends StatefulWidget {
  const DrawerPageTemplate({
    super.key,
    required this.pageTitle,
    required this.scale,
    required this.horizontalOffset,
    required this.backgroundWidget,
    required this.foregroundWidget,
  });

  final String pageTitle;
  final double scale;
  final double horizontalOffset;
  final Widget backgroundWidget;
  final Widget foregroundWidget;

  @override
  State<DrawerPageTemplate> createState() => _DrawerPageTemplateState();
}

class _DrawerPageTemplateState extends State<DrawerPageTemplate> with SingleTickerProviderStateMixin {
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
        title: widget.pageTitle,
        actionIconData: Icons.menu,
        onPressedAction: () => toggle(),
      ),
      body: DrawerStack(
        backgroundWidget: widget.backgroundWidget,
        foregroundWidget: DrawerAnimation(
          scale: widget.scale,
          horizontalOffset: widget.horizontalOffset,
          animationController: _animationController,
          child: widget.foregroundWidget,
        ),
      ),
    );
  }
}
