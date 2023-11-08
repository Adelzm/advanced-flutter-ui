import 'package:flutter/material.dart';

class StackEx extends StatelessWidget {
  const StackEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/happy_dog.jpg',
          fit: BoxFit.cover,
        ),
        const Positioned(
            top: 24,
            right: 24,
            child: Text(
              'Tu to turo...',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ],
    );
  }
}
