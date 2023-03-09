import 'package:flutter/material.dart';
import 'package:travel_app5b/screens/card_image_list.dart';
import 'package:travel_app5b/screens/gradient_black.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GradientBlack(title: 'Popular'),
        CardImageList(),
      ],
    );
  }
}