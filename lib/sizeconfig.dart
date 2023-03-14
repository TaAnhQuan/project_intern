import "package:flutter/material.dart";
class SizeConfig{
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;//kichs thuoc mac dinh
  static Orientation? orientation; // dinh hi=uong
  void init(BuildContext context){
    //nó sẽ biết widget này được đặt ở vị trí nào trên widget tree.
    ////Hay nói cách khác, một BuildContext như là một tham chiếu (reference) đến cái vị trí của widget (widget's location) trong widget tree. 
    ///argument: ly le
    _mediaQueryData  =MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }

}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}