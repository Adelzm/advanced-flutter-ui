import 'package:flutter/material.dart';

class ActionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ActionAppBar({
    super.key,
    required this.actionIconData,
    required this.onPressedAction,
    required this.title,
  });

  final IconData actionIconData;
  final VoidCallback onPressedAction;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: onPressedAction,
          icon: Icon(actionIconData),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
