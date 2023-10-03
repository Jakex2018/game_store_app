import 'package:flutter/material.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/welcome/components/body.dart';

class GameInfoCard extends StatelessWidget {
  const GameInfoCard({
    super.key, required this.top, required this.left, required this.title, required this.description, required this.icone,
  }); 
  final double top;
  final double left;
  final String title,description;
  final Icon icone;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
          width: 100,
          height: 140,
          decoration: BoxDecoration(
              color: klightColor, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                icone,
                TextTitle(
                    title: title,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    align: TextAlign.center, height: 0,),
                const SizedBox(
                  height: 10,
                ),
                TextTitle(
                    title: description,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    align: TextAlign.center, height: 0,)
              ],
            ),
          )),
    );
  }
}