import 'package:complex_ui/fundamental_elements/animation_controller.dart';
import 'package:complex_ui/fundamental_elements/stack.dart';
import 'package:complex_ui/fundamental_elements/transform.dart';
import 'package:flutter/material.dart';

enum UiSelector { stack, transform, animation }

class FundamentalElementsPage extends StatefulWidget {
  const FundamentalElementsPage({
    super.key,
  });

  @override
  State<FundamentalElementsPage> createState() => _FundamentalElementsPageState();
}

class _FundamentalElementsPageState extends State<FundamentalElementsPage> {
  var selector = UiSelector.stack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Examples'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Builder(builder: (context) {
                  switch (selector) {
                    case UiSelector.stack:
                      return const StackEx();
                    case UiSelector.transform:
                      return const TransformEx();
                    case UiSelector.animation:
                      return const AnimationEx();
                    default:
                      return const Text('Error!');
                  }
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => selector = UiSelector.stack),
                  child: const Text('Stack'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => selector = UiSelector.transform),
                  child: const Text('Transform'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => selector = UiSelector.animation),
                  child: const Text('Animation'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
