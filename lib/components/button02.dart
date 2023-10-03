import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class ButtonTwo extends StatelessWidget {
  ButtonTwo({
    super.key, required this.title, required this.color, required this.weight,required this.fontSize, required this.paddingX, required this.paddingY, required this.colorTwo, required this.logo,
  });

  final String title ;
  final Color color;
  final Color colorTwo;
  final Icon logo;
  final FontWeight weight;
  double fontSize;
  final double paddingX , paddingY;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingX,vertical: paddingY),
      decoration: BoxDecoration(
        color:colorTwo,borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Text(title , style: TextStyle(
            color:color,fontWeight: weight,fontSize: fontSize
          ),),
          logo
        ],
      ),
    );
  }
}