import 'package:flutter/material.dart';

class TransformEx extends StatefulWidget {
  const TransformEx({super.key});

  @override
  State<TransformEx> createState() => _TransformExState();
}

class _TransformExState extends State<TransformEx> {
  var sliderValue = 0.0;
  var dy = 0.0;
  var scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Transform.scale(
          scale: scale,
          child: Transform.translate(
            offset: Offset(0, dy),
            child: Image.asset(
              'assets/images/happy_dog.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Spacer(),
        Slider(
          min: -50,
          max: 50,
          value: sliderValue,
          onChanged: (newValue) => setState(
            () {
              sliderValue = newValue;
              dy = newValue * 2;
              scale = 1 + newValue / 100.0;
            },
          ),
        )
      ],
    );
  }
}
