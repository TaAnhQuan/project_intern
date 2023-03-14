import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import "package:project_intern/view/intro_app/controller_indicator.dart";
import "package:project_intern/view/intro_app/splashscreen.dart";
import'package:project_intern/view/home_page/home_page.dart';
final Map<String,WidgetBuilder> routes ={
  SplashScreenIntro.routeName :(contex) => SplashScreenIntro(),
  HomePage.routeName :(context)=>HomePage(),
};