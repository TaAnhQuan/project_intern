import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../sizeconfig.dart';


class IconbtnWithCounter extends StatelessWidget {
   const IconbtnWithCounter({super.key,  this.numOfItems= 0, required this.press, required this.svgSrc});
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;
  
  @override
  Widget build(BuildContext context) {
    return 
    Material(
      child: Container(
        color: Color.fromRGBO(255, 255, 255, 0), 
        child: InkWell(
          onTap: press,
      
          
          child: Stack(
            
            children: [
              Container(
              height: getProportionateScreenHeight(45),
              width: getProportionateScreenWidth(40),
              margin: const  EdgeInsets.only(left: 3),
              decoration: BoxDecoration(
      
                color: const  Color.fromARGB(255, 224, 231, 192),
                border: Border.all(color: Colors.black45,width: 1),
                //borderRadius: BorderRadius.circular(radius),
                shape: BoxShape.circle,
                
              ),
              child: SvgPicture.asset(
                svgSrc,height: 40, 
                width: 40,
                fit: BoxFit.none),
            ),
            if(numOfItems!= 0)
            Positioned(
              right: 0,
              top: -2,
              child: Container(
                height: getProportionateScreenHeight(16),
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1,color: Colors.white)
                ),
                child: Center(
                  child: Text("$numOfItems",style: const TextStyle(fontSize: 11
                  ,height: 1, color: Colors.white,
                  fontWeight: FontWeight.w600,
                  ),
                  
                  ), 
                  ),
              ),
            ),
            
            ]
          ),
        ),
      ),
    )
;
  }
}