import 'package:flutter/material.dart';

import '../../../sizeconfig.dart';

// ignore: camel_case_types
class searchTextFieldBodyHomePage extends StatelessWidget {
  const searchTextFieldBodyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(255, 255, 255, 0),
      child: Container(
        width: SizeConfig.screenWidth * 0.55,
        height: 45,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 224, 231, 192),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15))),
        child: TextField(
          onChanged: (value) {
            // if (kDebugMode) {
            //   print(value);
            // }
          },
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 18),
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Product",
            //prefix: Icon(Icons.search,color:Color.fromARGB(255, 99, 88, 27),size: 25,),
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(12)),
          ),
        ),
      ),
    );
  }
}
