import 'package:flutter/material.dart';
import 'package:game_store_app/screens/game/components/body.dart';
class ScreenGame extends StatelessWidget {
  const ScreenGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyGame()
    );
  }
}

