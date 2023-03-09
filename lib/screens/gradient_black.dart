import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientBlack extends StatelessWidget {
  final String title;
  const GradientBlack({super.key, required this.title});

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
        alignment: const Alignment(-0.9, -0.6),
        child: Text(
          title,
          style: GoogleFonts.actor(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
    );
  }
}