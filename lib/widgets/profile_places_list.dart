import 'package:flutter/material.dart';

import '../place.dart';
import 'profile_places.dart';
class ProfilePlacesList extends StatelessWidget {

  final Place place =  Place('Golden Gate', 'Un lugar donde pasan las aves', 'donde tambien el viento es fuerte', '123,414,553');
  final Place place2 = Place('Palacio de Bellas artes', 'Lindo lugar donde se encuentra cerca del centro', 'un escenario para tomar fotos', '124,565,863');

  ProfilePlacesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace('assets/img/lugar1.jpg', place),
          ProfilePlace('assets/img/lugar3.jpg', place2),
        ],
      ),
    );
  }

}