import 'package:flutter/material.dart';
import 'package:game_store_app/screens/welcome/components/body.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: BodyWelcome(),
    );
  }
}