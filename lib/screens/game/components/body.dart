import 'package:flutter/material.dart';
import 'package:game_store_app/components/button01.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/game/components/body_image.dart';
import 'package:game_store_app/screens/game/components/game_info_card_content.dart';
import 'package:game_store_app/screens/game/components/game_info_card_content_about.dart';

class BodyGame extends StatelessWidget {
  const BodyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Column(
          children: [
            BodyImage(),
          ],
        ),
        const GameInfoCardContent(),
        Positioned(
          left: 20,
          top: 460,
          child: ButtonOne(
              title: 'Install',
              color: Colors.white,
              weight: FontWeight.bold,
              fontSize: 15,
              paddingX: 140,
              paddingY: 15,
              colorTwo: kIntensityColor),
        ),
        const GameInfoCardAbout()
      ],
    );
  }
}