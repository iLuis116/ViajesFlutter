import 'package:flutter/material.dart';
import 'package:travel_app5b/widgets/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
          pathImg: 'assets/img/persona1.jpg', 
          user: 'Apolonia Rodriguez', 
          details: '1 review 5 photos', 
          commenst: 'This in an amazing place in Sri Lanka',
          ),
          Review(
            pathImg: 'assets/img/persona2.jpg', 
            user: 'Esperanza Macias', 
            details: '2 review 3 photos', 
            commenst: 'Great place',
        ),
        Review(
            pathImg: 'assets/img/persona3.jpg', 
            user: 'Joselin Sanchez', 
            details: '1 review 1 photos', 
            commenst: 'I liked the place',
        ),
        Review(
            pathImg: 'assets/img/persona4.jpg', 
            user: 'Arleth Rojas', 
            details: '3 review 2 photos', 
            commenst: 'Nice place',
        ),
      ],
    );
  }
}