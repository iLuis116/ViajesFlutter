import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonNavigate extends StatelessWidget {

  final String buttonText;

  const ButtonNavigate({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Presionaste el botón',
            style: TextStyle(fontSize: 15),
              ),
              backgroundColor: Colors.black,
            ),
          );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
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
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.abel(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}