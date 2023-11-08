import 'package:flutter/material.dart';

class CustomDrawerPage extends StatefulWidget {
  const CustomDrawerPage({super.key});

  @override
  State<CustomDrawerPage> createState() => _CustomDrawerPageState();
}

class _CustomDrawerPageState extends State<CustomDrawerPage> with SingleTickerProviderStateMixin {
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
    Widget myDrawer = Container(
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
              TextButton(onPressed: () {}, child: const Text('Item 1')),
              TextButton(onPressed: () {}, child: const Text('Item 2')),
              TextButton(onPressed: () {}, child: const Text('Item 3')),
            ],
          ),
        ],
      ),
    );
    Widget myDog = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bull_dog.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Drawer'),
        actions: [
          IconButton(
            onPressed: () => toggle(),
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Stack(
        children: [
          myDrawer,
          AnimatedBuilder(
              animation: _animationController,
              builder: (context, _) {
                return Transform(
                  transform: Matrix4.identity()
                    ..scale(1 - _animationController.value * (1 - scale))
                    ..translate(dx * _animationController.value),
                  alignment: Alignment.bottomLeft,
                  child: myDog,
                );
              }),
        ],
      ),
    );
  }
}
