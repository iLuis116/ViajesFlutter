import 'package:flutter/material.dart';
import 'package:travel_app5b/screens/description_place_screen.dart';
import 'package:travel_app5b/screens/gradient_black.dart';
import 'package:travel_app5b/screens/reviewlist.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  final String namePlace = 'Duwilli Ella';
  final String descriptionText = 'Ullamco officia deserunt quis dolore ad irure dolor nulla amet velit. Consequat occaecat proident ea ea in. Veniam ullamco nostrud nostrud consequat elit quis ullamco aute consectetur veniam sint. Exercitation do amet reprehenderit pariatur eiusmod velit consequat ex ex sit aliqua. \n\n  Excepteur esse incididunt cupidatat elit velit id exercitation laborum anim et. Commodo tempor velit ea velit sunt ea ea cupidatat excepteur occaecat anim aute sint adipisicing. Irure voluptate duis voluptate consequat culpa eiusmod. Deserunt aliqua dolor voluptate non irure. Deserunt magna consectetur ipsum reprehenderit mollit. Ex proident deserunt nisi tempor culpa id consectetur officia proident non enim reprehenderit adipisicing nostrud.';

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B&B Travels',
      home: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: [
                DescriptionPlaceSreen(
                  namePlace: namePlace,
                  stars: 5,
                  descriptionPlace: descriptionText,
                ),
                const ReviewList(),
              ],
            ),
            const GradientBlack(),
          ],
        ),
      ),
    );
  }
}
