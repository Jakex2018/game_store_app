import 'package:flutter/material.dart';
import 'package:game_store_app/components/button01.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/home/screen_home.dart';

class BodyImage extends StatelessWidget {
  const BodyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: Image.asset('assets/images/bg_game.jpg',fit: BoxFit.cover ,height: 250,)
          ),
          Positioned(
            top: 30,
            left: 20,
            child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => const ScreenHome(),));}, icon: const Icon(Icons.arrow_back,color: kTextLightColor,size: 40,)),
          ),
          Positioned(
            top: 225,
            right:105,
            child: ButtonOne(title: 'Uncharted', color: Colors.white, weight: FontWeight.bold, fontSize: 20, paddingX: 30, paddingY:10, colorTwo: Colors.red),
          )
        ],
      ),
    );
  }
}


/*
 */