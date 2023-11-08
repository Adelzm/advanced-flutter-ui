import 'package:flutter/material.dart';

class DrawerBackground extends StatelessWidget {
  const DrawerBackground({
    super.key,
    required this.onPressedItem1,
    required this.onPressedItem2,
    required this.onPressedItem3,
  });

  final VoidCallback? onPressedItem1;
  final VoidCallback? onPressedItem2;
  final VoidCallback? onPressedItem3;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.maxFinite,
      height: double.maxFinite,
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: onPressedItem1, child: const Text('Item 1')),
              TextButton(onPressed: onPressedItem2, child: const Text('Item 2')),
              TextButton(onPressed: onPressedItem3, child: const Text('Item 3')),
            ],
          ),
        ],
      ),
    );
  }
}
