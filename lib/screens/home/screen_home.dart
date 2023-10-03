import 'package:flutter/material.dart';
import 'package:game_store_app/components/bottom_nav_bar.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/home/components/app_bar_build.dart';
import 'package:game_store_app/screens/home/components/body.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const BodyHome() ,
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  // ignore: non_constant_identifier_names
  PreferredSize AppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight), // Ajusta la altura según tus necesidades
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding/4 , vertical: 2),
        child: AppBarBuild(),
      ),
    );
  }
}