import 'package:flutter/material.dart';
import 'package:game_store_app/components/button01.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/home/components/category_list.dart';
import 'package:game_store_app/screens/home/components/game_info_content.dart';
import 'package:game_store_app/screens/home/components/games_content.dart';
import 'package:game_store_app/screens/welcome/components/body.dart';
class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
            child: TextTitle(title: 'Category Games', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white, align: TextAlign.start, height: 0,),
          ),
          const SizedBox(height: 5),
          const CategoryList(),
          const GamesContent(),
          const TitleAndButton(),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              GameInfoContent(),
              GameInfoContent()
            ],
          )
        ],
      ),
    );
  }
}



class GameHomeInfo extends StatelessWidget {
  const GameHomeInfo({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
    top: 10,
    left: 20,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/images/game03.jfif',height: 60,width: 80,fit: BoxFit.cover,)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextTitle(
              title: 'Dead Space', 
              fontSize: 15, 
              fontWeight: FontWeight.bold, 
              color: Colors.white, align: TextAlign.start, height: 0,),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Icon(Icons.star, color: Colors.yellow,size: 17,),
                TextTitle(title: '4.9', fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white, align: TextAlign.center, height: 0,),
                const SizedBox(width: 20,),
                const Icon(Icons.lock_clock_rounded, color: Colors.yellow,size: 17,),
                TextTitle(title: '5.6M', fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white, align: TextAlign.center, height: 0,),
                ],
              )
            ],
          ),
        ),
        const SizedBox(width: 20,),
        ButtonOne(title: 'Play', color: klightColor, weight: FontWeight.bold, fontSize: 10, paddingX: 30, paddingY: 10, colorTwo: kBackgroundColor.withOpacity(0.8))
      ],
    ),
    );
  }
}

class TitleAndButton extends StatelessWidget {
  const TitleAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextTitle(title: 'Top shooter games', fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, align: TextAlign.center, height: 0,),
          TextTitle(title: 'See all', fontSize: 15, fontWeight: FontWeight.bold, color: kTextLightColor, align: TextAlign.center, height: 0,),
        ],
      ),
    );
  }
}