import 'package:flutter/material.dart';
import 'package:game_store_app/screens/home/components/game_card_home.dart';

class GameContentRow extends StatelessWidget {
  const GameContentRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        GameCardHome(),
        SizedBox(width: 15,),
        GameCardHome(),
      ],
    );
  }
}