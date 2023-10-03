import 'package:flutter/material.dart';
import 'package:game_store_app/components/button02.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/welcome/components/body.dart';

class GameInfoCardAbout extends StatelessWidget {
  const GameInfoCardAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitle(
            title: 'About',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            align: TextAlign.start,
            height: 0,
          ),
          const SizedBox(height: 10),
          TextTitle(
            title:
                'Velit deserunt non labore ut pariatur ut dolor anim\n Velit deserunt non labore ut pariatur ut dolor anim\n Vdasdit deserunt non labore ut pariatur ut dolor ani\n Velit deserunt non labore ut pariatur ut dolor anim\n',
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: kTextLightColor,
            align: TextAlign.left,
            height: 1.3,
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                ButtonTwo(
                  title: 'Read More',
                  color: Colors.white,
                  weight: FontWeight.bold,
                  fontSize: 15,
                  paddingX: 6,
                  paddingY: 5,
                  colorTwo: kIntensityColor,
                  logo: const Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}