import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_intern/view/home_page/home_page.dart';

import 'package:project_intern/view/login/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      //home: HomePage(),
    );
  }
}
