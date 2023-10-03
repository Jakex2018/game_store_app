import 'package:flutter/material.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/home/components/game_content_row.dart';

class GamesContent extends StatelessWidget {
  const GamesContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: aDefaultPadding ,vertical: aDefaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children:<Widget> [
            GameContentRow(),
            SizedBox(height: 10,),
            GameContentRow()
          ],
        ),
      ),
    );
  }
}