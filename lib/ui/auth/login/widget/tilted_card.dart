import 'package:flutter/material.dart';
import './home_card.dart';

class TiltedCard extends StatelessWidget {
  const TiltedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 0,
                child: HomeCard(
                  imageUrl: 'https://rstr.in/google/tripedia/g2i0BsYPKW-',
                  width: 200,
                  height: 273,
                  tilt: -3.83 / 360,
                ),
              ),
              Positioned(
                right: 0,
                child: HomeCard(
                  imageUrl: 'https://rstr.in/google/tripedia/980sqNgaDRK',
                  width: 180,
                  height: 230,
                  tilt: 3.46 / 360,
                ),
              ),
              HomeCard(
                imageUrl: 'https://rstr.in/google/tripedia/pHfPmf3o5NU',
                width: 225,
                height: 322,
                tilt: 0,
                showTitle: true,
              ),
            ],
          )
        ),
    );
  }
}