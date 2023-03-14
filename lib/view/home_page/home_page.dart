import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'body_homepage.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = "/homepage";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: BodyHomePage(),
    );
  }
}