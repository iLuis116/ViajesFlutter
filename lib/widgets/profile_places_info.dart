import 'package:flutter/material.dart';
import 'package:travel_app5b/widgets/small_button.dart';

import '../place.dart';

class ProfilePlaceInfo extends StatelessWidget {

  final Place place;

  const ProfilePlaceInfo(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final place = Text(
      this.place.name,
      style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 20.0,
          fontWeight: FontWeight.bold
      ),
    );

    final placeInfo = Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 10.0
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.place.where,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                ),
              ),
              Text(
                this.place.type,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                ),
              )
            ]
        )
    );

    final steps = Text(
      'Steps ${this.place.steps}',
      style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
      ),
    );

    final card = Container(
      width: screenWidth * 0.65,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0)
            )
          ]
      ),
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              place,
              placeInfo,
              steps
            ],
          )
      ),
    );

    return Stack(
      alignment: const Alignment(0.8, 1.25),
      children: <Widget>[
        card,
        const SmallButton(),
      ],
    );
  }

}