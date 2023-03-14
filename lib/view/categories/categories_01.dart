import "package:flutter/material.dart";
import 'package:project_intern/sizeconfig.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Categories_01 extends StatefulWidget {
  const Categories_01({
    super.key,
  });

  @override
  State<Categories_01> createState() => _Categories_01State();
}

class _Categories_01State extends State<Categories_01> {
  @override
  Widget build(BuildContext context) {
    bool checkpage = true;
    int pageIndex = 0;
    PageController _pageController = PageController(initialPage: 0);
    return Column(
      children: [
        Container(
          
          height: SizeConfig.screenHeight*0.15,
          width: SizeConfig.screenWidth,
          constraints: BoxConstraints(
            //maxHeight: 80,
            maxWidth: SizeConfig.screenWidth
          ),
          margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenHeight(5)
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20)
          
        ),
        child: Stack(
          children: [
            PageView(
              onPageChanged: (int index){
                setState(() {
                  print(index);
                  if (index<=1){
                    checkpage = true;
                  }
                  else{
                    checkpage = false;
                  }
                  pageIndex = index;
                }
          
                );
              },
              controller: _pageController,
              children: <Widget>[
                Container(color: Color.fromARGB(255, 3, 83, 148),child: Text("data")),
                Container(color: Colors.orange,child: Text("data2")),
                Container(color: Color.fromARGB(255, 3, 83, 148),child: Text("data3")),
                Container(color: Colors.red,child: Text("data4")),
                
                ],
            ),
            SizedBox(
            height: SizeConfig.screenHeight*0.14,
            width: SizeConfig.screenWidth,
            child: Align(
                    
              alignment: Alignment.bottomCenter,
              child: Container(
              margin: EdgeInsets.only(top: 5),
              child: SmoothPageIndicator(
                controller:
                    _pageController, //_controller,//_pageViewController,
                count: 4,
                //axisDirection: Axis.vertical,
                //_controller.nextPage(duration: duration, curve: curve)
                effect:const WormEffect(
                  // dotWidth: 9,
                  // dotHeight: 9,
                  // offset: 5,
                  // dotColor: Colors.black12,
                  // strokeWidth: 1,
                  // paintStyle: PaintingStyle.fill,
                  //activeDotColor: Colors.red,
                  spacing:  8.0,
                  radius:  1.0,
                  dotWidth:  10,
                  dotHeight:  10,
                  paintStyle:  PaintingStyle.stroke,
                  strokeWidth:  1.5,
                  dotColor:  Colors.grey,
                  activeDotColor:  Colors.blue,
                ),
                // SwapEffect(  // conra  nhieu dang do effect smoothpage....rrr
                //   activeDotColor: Colors.black54,
                //   dotColor: Colors.yellow,
                //   dotHeight: 10,
                //   dotWidth: 10,
                // ),
              ),
            ),
                  ),
          ),        
            ]
        ),
        ) 
      ],
    );
  }
}