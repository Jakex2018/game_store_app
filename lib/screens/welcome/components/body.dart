import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_store_app/components/button01.dart';
import 'package:game_store_app/constant.dart';
import 'package:game_store_app/screens/home/screen_home.dart';

class BodyWelcome extends StatelessWidget {
  const BodyWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: kbackgroundColor,
          ),
          Positioned(
            top: -120,
            left: 200,
            child: Container(
              transform: Matrix4.rotationZ(120),
              width: 340,
              height: 250,
              decoration: const BoxDecoration(
                color: klightColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(300),
                  bottomRight: Radius.circular(300)
                )
              ),
              child: IconButton(
                onPressed: (){},icon: SvgPicture.asset('assets/icons/ball.svg',height: 100,width: 95),
              )
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 180,
              height: 200,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100)
                )
              ),
              child: IconButton(
                onPressed: (){},icon: SvgPicture.asset('assets/icons/gaming.svg',height: 95,width: 95),
              )
            ),
          ),
          const WelcomeText(),
          Positioned(
                bottom: 50,
                right:-70,
                child: Image.asset('assets/images/mario.png', height: 420),
              ),
          Positioned(
            bottom: 20,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width*1.1,
              height: MediaQuery.of(context).size.height*0.25,
              decoration: BoxDecoration(
                color: klightColor.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(2000),
                  topRight: Radius.circular(800)
                ),
              ),
              
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width*1.1,
              height: MediaQuery.of(context).size.height*0.25,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(2000),
                  topRight: Radius.circular(800)
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 70,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const ScreenHome()));
              },
              child: ButtonOne(title: 'Get Started', color: Colors.white, weight: FontWeight.bold, fontSize: 30, paddingX: 30,paddingY: 20, colorTwo: kIntensityColor),
            ),
          )
        ],
      ),
    );
  }
}



class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding,vertical: aDefaultPadding*13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitle(title: 'GAME\nSPEECTRUM', fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white, align: TextAlign.start, height: 1,),
          const SizedBox(height: 10),
          const Text('SKDK OSKD', style: TextStyle(color: kTextLightColor),)
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class TextTitle extends StatelessWidget {
  TextTitle({
    super.key, required this.title, required this.fontSize, required this.fontWeight, required this.color, required this.align, required this.height,
  });
  final String title;
  double fontSize;
  double height;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign align;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: 
      TextStyle(color: color , 
        fontSize: fontSize,
        fontWeight: fontWeight,height: height),textAlign: align);
  }
}