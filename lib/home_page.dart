import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () => Navigator.pushNamed(context, '/fundamental-elements'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              child: const Text('Fundamental Elements'),
            ),
            FilledButton.tonal(
              onPressed: () => Navigator.pushNamed(context, '/custom-drawer'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              child: const Text('Custom Drawer'),
            ),
            FilledButton.tonal(
              onPressed: () => Navigator.pushNamed(context, '/atomic-drawer'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              child: const Text('Atomic Drawer'),
            ),
            FilledButton.tonal(
              onPressed: () => Navigator.pushNamed(context, '/my-drawer'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              child: const Text('My Drawer'),
            ),
          ],
        ),
      ),
    ));
  }
}
