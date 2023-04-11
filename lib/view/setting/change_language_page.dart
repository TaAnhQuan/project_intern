import 'package:flutter/material.dart';
import 'package:flutter_circle_flags_svg/flutter_circle_flags_svg.dart';

class ChangeLanguagePage extends StatefulWidget {
  const ChangeLanguagePage({Key? key}) : super(key: key);

  @override
  State<ChangeLanguagePage> createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Language',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.grey.shade700,
        ),
      ),
      body: Column(
        children: [
          ButtonBar(
            children: [
              CircleFlag(
                'us',
                size: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: SizedBox(
                      width: screenWidth * 0.8,
                      child: const Text(
                        'English',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))),
            ],
          ),
          ButtonBar(
            children: [
              CircleFlag(
                'vn',
                size: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: SizedBox(
                      width: screenWidth * 0.8,
                      child: const Text(
                        'Vietnamese',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
