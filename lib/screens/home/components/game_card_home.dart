import 'package:flutter/material.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/game/screen_game.dart';

class GameCardHome extends StatelessWidget {
  const GameCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenGame(),));
      },
      child: Stack(
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
          Positioned(
            left: 2.6,
            top: 3,
            child:ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/game01.jfif',height: 144, width: 145,fit: BoxFit.cover,)),
          )
        ],
      ),
    );
  }
}