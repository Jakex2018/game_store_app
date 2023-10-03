import 'package:flutter/material.dart';
import 'package:game_store_app/screens/game/components/game_info_card.dart';
class GameInfoCardContent extends StatelessWidget {
  const GameInfoCardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 285,horizontal: 10),
            child: GameInfoCard(
              top: 285,
              left:0,
              title: 'Rating',
              description: '4.5 Stars',
              icone: Icon(
                Icons.star,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          GameInfoCard(
            top: 285,
            left: 130,
            title: 'Downloads',
            description: '914 +',
            icone: Icon(
              Icons.lock_clock,
              color: Colors.white,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GameInfoCard(
              top: 285,
              left: 240,
              title: 'Category',
              description: 'Action',
              icone: Icon(
                Icons.category,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
