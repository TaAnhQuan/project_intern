import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_intern/view/intro_app/controller_indicator.dart';
class SplashScreenIntro extends StatefulWidget {
  const SplashScreenIntro({super.key});
  static String routeName = "/intro app";
  @override
  State<SplashScreenIntro> createState() => _SplashScreenIntroState();
}

class _SplashScreenIntroState extends State<SplashScreenIntro> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
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
                //   Image.asset("assets/imag/logo/png",height: 500,width:300,
                //   fit: BoxFit.contain,
                //   )
                // ,
                Center(
                    child:
                    // Text("Shopping", style: TextStyle(fontSize: 40,color: Colors.yellow),
                    // ),
                    //     Image.asset("assets/imag/logo/png",height: 500,width:200,
                    //   fit: BoxFit.contain,
                    //   )
                    // ,
                    Container(height: 250,width: 250,
                      child:  Image.asset("assets/image/logo.png",height: 500,width:200,
                        fit: BoxFit.contain,
                      ),

                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}