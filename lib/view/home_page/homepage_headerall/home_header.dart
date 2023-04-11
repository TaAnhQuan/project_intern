import 'package:flutter/material.dart';
import 'package:project_intern/view/home_page/homepage_headerall/search_textfield_bodyhomepage.dart';

import '../../../sizeconfig.dart';
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

          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            width: 45,
            height: 45,
            child: TextButton(
              onPressed: () {},
              child: Image.asset(
                "assets/image/icons/scan.png",
                height: 45,
                width: 45,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 231, 192),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth * 0.04,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 231, 192),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.search)),
                const search_textfield_bodyhomepage(),
              ],
            ),
          ),
          IconbtnWithCounter(
              numOfItems: 0,
              svgSrc: "assets/image/icons/cart_icon.svg",
              press: () {}),
          IconbtnWithCounter(
              numOfItems: 2,
              svgSrc: "assets/image/icons/Bell.svg",
              press: () {}),
        ],
      ),
    );
  }
}
