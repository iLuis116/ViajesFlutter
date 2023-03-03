import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {

  final String pathImg;
  final String user;
  final String details;
  final String commenst;

  const Review({super.key, 
  required this.pathImg,
  required this.user, 
  required this.details, 
  required this.commenst, 
  });

  @override
  Widget build(BuildContext context) {

    //Widget para dibujar una estrella con relleno
      final star = Container(
      margin: const EdgeInsets.only(
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    //Widget para las fotos del usuario
    final profilepic = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImg),
        ),
      ),
    );

    //Widget para el nombre del usuario
    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        user,
        textAlign: TextAlign.left,
        style: GoogleFonts.abel(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    //Widget para info del usuario
    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: GoogleFonts.abel(
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
    );

      //Widget para el contenido del usuario
        final userComments = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        commenst,
        textAlign: TextAlign.left,
        style: GoogleFonts.abel(
          fontSize: 14.0,
          color: Colors.black,
        ),
      ),
    );

    //Widget para mostrar los parametros anteriores "UserName, UserInfo, UserComments"
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(children: [
          userInfo,
          star,
          star,
          star,
          star,
        ],
        ),
        userComments,
      ],
    );

    return Row(
      children: [
        profilepic,
        userDetails,
      ],
    );
  }
}