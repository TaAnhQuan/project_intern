import "package:flutter/material.dart";

import '../../../../database/product.dart';
import '../../../../sizeconfig.dart';
import '../../../home_page/homepage_headerall/home_header.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Stack(children: [
        SafeArea(
            child: Container(
          decoration: const BoxDecoration(
              //color: Colors.amber,
              ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 55),
                  height: SizeConfig.screenHeight * 0.45,
                  width: SizeConfig.screenWidth,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    product.imageUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .blue[700], //Color.fromARGB(255, 248, 248, 140),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text.rich(TextSpan(
                                text: "Giá SALE \n",
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 20),
                                children: [TextSpan()])),
                          ],
                        ),
                        Text(
                            "Noi dung: $product.content \n  ua thich ${product.favorite} \n gia: ${product.price} \n sale ${product.price1} \n san pham con lai $product.remainingproduct",
                            style: const TextStyle(fontSize: 18)),
                      ],
                    ))
              ],
            ),
          ),
        )),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(0),
              vertical: getProportionateScreenHeight(5)),
          child: Container(
              //margin: EdgeInsets.only(top: 2,bottom: 2),
              padding: const EdgeInsets.only(top: 5, bottom: 2),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const HomeHeader()),
        ),
      ]),
    );
  }
}
