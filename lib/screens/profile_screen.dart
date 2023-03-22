import 'package:flutter/material.dart';
import 'package:travel_app5b/screens/profile_header.dart';

import '../widgets/profile_background.dart';
import '../widgets/profile_places_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const ProfileBackground(),
        ListView(
          children: <Widget>[
            const ProfileHeader(),
            ProfilePlacesList()

          ],
        ),
      ],
    );
  }
}