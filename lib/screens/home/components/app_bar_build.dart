import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar AppBarBuild() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu),color: Colors.white,),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_on) ,color:Colors.white,)
      ],
    );
  }