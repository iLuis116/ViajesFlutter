import 'package:flutter/material.dart';

class GradientBlack extends StatelessWidget {
  const GradientBlack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
          Colors.blueAccent,
          Colors.deepPurpleAccent,
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          ),
        ),
    );
  }
}