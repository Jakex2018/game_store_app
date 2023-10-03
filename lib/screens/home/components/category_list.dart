import 'package:flutter/material.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/welcome/components/body.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  List categories =['Actions' , 'Adventure' ,'Shooter' , 'Family'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index; 
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal:15),
            margin: EdgeInsets.only(left: 20 ,
              right: index == categories.length -1 ? 10: 0),
            decoration: BoxDecoration(
              color: index == selectIndex ? kIntensityColor: klightColor,
              borderRadius: BorderRadius.circular(15)
            ),
            child:TextTitle(title:categories[index], fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white, align: TextAlign.center, height: 0,),
          ),
        ),
      ),
    );
  }
}