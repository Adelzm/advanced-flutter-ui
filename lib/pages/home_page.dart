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
              onPressed: () => Navigator.pushNamed(context, '/simple-example'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              child: const Text('Simple Example'),
            ),
            FilledButton.tonal(
              onPressed: () => Navigator.pushNamed(context, '/drawer-example'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              child: const Text('Drawer Example'),
            ),
            FilledButton.tonal(
              onPressed: () => Navigator.pushNamed(context, '/cube-example'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              child: const Text('Cube Example'),
            ),
          ],
        ),
      ),
    ));
  }
}
