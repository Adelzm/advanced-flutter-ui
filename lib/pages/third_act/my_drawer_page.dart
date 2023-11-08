import 'package:complex_ui/atomic_design/atoms/drawer_background.dart';
import 'package:complex_ui/atomic_design/atoms/drawer_foreground.dart';
import 'package:complex_ui/atomic_design/templates/drawer_page_template.dart';
import 'package:flutter/material.dart';

class MyDrawerPage extends StatelessWidget {
  const MyDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerPageTemplate(
      pageTitle: 'My Drawer',
      scale: 0.7,
      horizontalOffset: 90,
      backgroundWidget: DrawerBackground(
        onPressedItem1: () {},
        onPressedItem2: () {},
        onPressedItem3: () {},
      ),
      foregroundWidget: const DrawerForeground(imagePath: 'assets/images/cute_dog.jpg'),
    );
  }
}
