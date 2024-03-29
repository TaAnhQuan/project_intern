import 'package:flutter/material.dart';
import "package:project_intern/view/home_page/home_controller.dart";
import 'package:project_intern/view/intro_app/indicator_page1.dart';
import 'package:project_intern/view/intro_app/indicator_page2.dart';
import 'package:project_intern/view/intro_app/indicator_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ControllerIndicator extends StatefulWidget {
  const ControllerIndicator({super.key});

  @override
  State<ControllerIndicator> createState() => _ControllerIndicator();
}

class _ControllerIndicator extends State<ControllerIndicator> {
  bool checkPage = true;
  int pageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: maxHeight * 0.8,
                width: maxWidth,
                child: PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      //print(index);
                      if (index <= 1) {
                        checkPage = true;
                      } else {
                        checkPage = false;
                      }
                      pageIndex = index;
                    });
                  },
                  controller: _pageController,
                  children: const <Widget>[
                    IndicatorPage1(),
                    IndicatorPage2(),
                    IndicatorPage3(),
                  ],
                ),
              ),
              SizedBox(
                height: maxHeight * 0.82,
                width: maxWidth,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 300),
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
                  padding: EdgeInsets.only(top: maxHeight * 0.9),
                  child: SizedBox(
                      height: 45,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {
                          checkPage
                              ? _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.bounceInOut)
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeControllerPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 245, 161, 5)),
                        child: Text(
                          checkPage ? "Next" : "Get started",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
