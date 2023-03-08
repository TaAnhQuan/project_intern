import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prokect_intern/view/intro app/controller_indicator.dart';
class SplashScreenIntro extends StatefulWidget {
  const SplashScreenIntro({super.key});

  @override
  State<SplashScreenIntro> createState() => _SplashScreenIntroState();
}

class _SplashScreenIntroState extends State<SplashScreenIntro> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ControllerIndicator()))
        );
  }
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    double maxwitdth = MediaQuery.of(context).size.width; 
    double maxheight = MediaQuery.of(context).size.height; 
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: maxheight,
            width: maxwitdth,
            color: Colors.amber,
            child: Stack(
              children: [
            
              Center(
                child: Text("Shopping", style: TextStyle(fontSize: 40,color: Colors.yellow),),
              )
                    

              ],

               ),
          )
        ],
      ),
    );
  }
}