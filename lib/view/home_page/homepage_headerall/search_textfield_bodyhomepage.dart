import 'package:flutter/material.dart';

import '../../../sizeconfig.dart';
// ignore: camel_case_types
class search_textfield_bodyhomepage extends StatelessWidget {
  const search_textfield_bodyhomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.55,
      height: 45,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 231, 192),
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        onChanged: (value){
          print(value);
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
          vertical: getProportionateScreenHeight(12)
          ),
          
              
      ),
      ),
      );
  }
}
