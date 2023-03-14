
import 'package:flutter/material.dart';
import 'package:project_intern/view/homepage/search_textfield_bodyhomepage.dart';

import '../../sizeconfig.dart';
import 'icon_btn_withcounter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.amber,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 224, 231, 192),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: SizeConfig.screenWidth*0.04,),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 231, 192),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.search)),
                search_textfield_bodyhomepage(),
              
                    
            ],),
          ),
           IconbtnWithCounter(numOfItems: 0,
           svgSrc: "assets/image/icons/cart_icon.svg",press: (){
              
            }),
            IconbtnWithCounter(numOfItems: 2,
            svgSrc: "assets/image/icons/Bell.svg",press: (){

            }),    
        ],
      ),
    );
  }
}
