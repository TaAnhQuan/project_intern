import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_intern/view/intro_app/controller_indicator.dart';
class SplashScreenIntro extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  static var routeName;

  const SplashScreenIntro({super.key});

  @override
  State<SplashScreenIntro> createState() => _SplashScreenIntroState();
}

class _SplashScreenIntroState extends State<SplashScreenIntro> {
  @override
  void initState() {
    super.initState();
    Timer(
         const  Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>  const  ControllerIndicator()))
        );
  }
  //final PageController _pageController = PageController(initialPage: 0);
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
              children: const [
            
              Center(
                child: Text("Shopping", style:  TextStyle(fontSize: 40,color: Colors.yellow),),
              )
                    

              ],

               ),
          )
        ],
      ),
    );
  }
}