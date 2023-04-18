//
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_intern/view/home_page/home_page.dart';
import "package:project_intern/view/intro_app/splashscreen.dart";

final Map<String, WidgetBuilder> routes = {
  SplashScreenIntro.routeName: (context) => const SplashScreenIntro(),
  HomePage.routeName: (context) => const HomePage(),
};
