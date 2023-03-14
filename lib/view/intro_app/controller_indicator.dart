import 'package:flutter/material.dart';
import 'package:project_intern/view/intro app/indicator_page1.dart';
import 'package:project_intern/view/intro app/indicator_page2.dart';
import 'package:project_intern/view/intro app/indicator_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import "package:project_intern/view/home_page/home_page.dart";
import "package:project_intern/view/home_page/home_controller.dart";
class ControllerIndicator extends StatefulWidget {
   const ControllerIndicator({super.key});

  @override
  State<ControllerIndicator> createState() => _ControllerIndicator();
}

class _ControllerIndicator extends State<ControllerIndicator> {
  bool checkpage = true;
  int pageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    double maxwitdth = MediaQuery.of(context).size.width; 
    double maxheight = MediaQuery.of(context).size.height; 
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
           
            //color: Colors.amber,
            child: Stack(
              children: [
                Container(
                   height: maxheight*0.8,
                  width: maxwitdth,
                  child: PageView(
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
                      Indicatoe_page1(),
                      Indicatoe_page2(),
                      Indicatoe_page3(),
                      
                      ],
                  ),
                ),
          SizedBox(
            height: maxheight*0.82,
            width: maxwitdth,
            child: Align(
                    
              alignment: Alignment.bottomCenter,
              child: Container(
              margin: EdgeInsets.only(top: 300),
              child: SmoothPageIndicator(
                controller:
                    _pageController, //_controller,//_pageViewController,
                count: 3,
                //axisDirection: Axis.vertical,
                //_controller.nextPage(duration: duration, curve: curve)
                effect: const SlideEffect(
                  dotWidth: 12,
                  dotHeight: 12,
                  offset: 10,
                  dotColor: Colors.grey,
                  strokeWidth: 1.5,
                  paintStyle: PaintingStyle.stroke,
                  activeDotColor: Color.fromRGBO(221, 112, 10, 1),
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

           Center(
          child: Padding(
            padding:  EdgeInsets.only(top: maxheight*0.9),
            child: SizedBox(
                height: 45,
                width: 130,
                child: ElevatedButton(
                  onPressed: () {
                    checkpage
                        ? _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceInOut)
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>HomeControllerPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 245, 161, 5)),
                  child: Text(
                    checkpage ? "Next" : "Get started",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
          ),
        )

              ],

               ),
          )
        ],
      ),
    );
  }
}