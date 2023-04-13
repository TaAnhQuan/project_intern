import 'package:flutter/material.dart';
import 'body_homepage.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = "/homepage";
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: BodyHomePage(),
    );
  }
}
