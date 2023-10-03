import 'package:flutter/material.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/home/components/body.dart';

class GameInfoContent extends StatelessWidget {
  const GameInfoContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget> [
        Container(
          margin: const EdgeInsets.only(left: 20,top:10),
          width: MediaQuery.of(context).size.width*0.9,
          height: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:klightColor,),
        ),
          const GameHomeInfo(),
        ],
    );
  }
}