import 'dart:math' as math;

import "package:flutter/material.dart";

import '../../../database/product.dart';
import "../../../sizeconfig.dart";
import "../../categories/categories_01.dart";
import "../../product/widget/product_detail/product_detail.dart";
import "infomation_title_flash_sale.dart";

class FlashSale extends StatelessWidget {
  const FlashSale({
    super.key,
    required Animation<double> animation,
    required bool isVisible,
  })  : _animation = animation,
        _isVisible = isVisible;

  final Animation<double> _animation;
  final bool _isVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
      height: SizeConfig.screenHeight * 0.2,
      decoration: BoxDecoration(
          //border:,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)),
          color: Colors.pink[200]), //
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0, left: 10, right: 10),
            height: SizeConfig.screenHeight * 0.18,
            decoration: BoxDecoration(color: Colors.red[900]),
          ),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.02, left: 1, right: 1),
            height: SizeConfig.screenHeight * 0.18,
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.elliptical(20, 30)),
                color: Colors.white //Colors.yellow[10]
                ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: largestProducts.length, //largestMultipliers.length,
                itemBuilder: (BuildContext context, int index) {
                  final product = largestProducts[index];
                  return GestureDetector(
                    //onTap: () => print(index),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail(
                                    product: sortedProducts[index],
                                  )));
                      // print(" ${product.name} : NOI DUNG ${product.content}+ " " +");
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15, left: 8, right: 1),
                      width: SizeConfig.screenWidth * 0.3,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(bottom: 35, top: 3),
                            decoration: BoxDecoration(
                                //color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              product.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 35, //SizeConfig.screenWidth*0.25,
                              width: SizeConfig.screenWidth * 0.3,
                              //color: Colors.blue,
                              child: Column(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text: "${product.price1}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                        children: const [
                                          TextSpan(
                                            text: " đ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          )
                                        ]),
                                  ),
                                  Text(
                                    "${product.price} đ",
                                    style: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                  //Text("$products[index].name",style: TextStyle(fontSize: 10),)
                                ],
                              ),
                            ),
                          ),
                          DrawFlashSaleTopRight(product: product),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          InfomationTitleFlashSale(animation: _animation),
          AnimationLinghtFlashSale(
              isVisible: _isVisible, animation: _animation),
        ],
      ),
    );
  }
}

class DrawFlashSaleTopRight extends StatelessWidget {
  const DrawFlashSaleTopRight({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 32,
        width: 25,
        decoration: const BoxDecoration(
            //color:Colors.blue,
            ),
        child: Stack(children: [
          Container(
            height: 26,
            width: 18,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(4, 20),
                  bottomRight: Radius.elliptical(4, 20),
                )),
            //padding: EdgeInsets.only(left: 2.5, right: 2.5),
            margin: const EdgeInsets.only(left: 3.5, right: 3.5),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 4),
                      Text.rich(
                        TextSpan(
                          text: " giảm \n ",
                          style: const TextStyle(
                            fontSize: 6,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                                text: "${(product.multiplier * 100).round()}%",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 8,
                                )),
                          ],
                        ),
                      ),
                      //  Text.rich(TextSpan(
                      //         text: "${(products[index].multiplier*100).round()} %",
                      //         style: TextStyle(fontWeight: FontWeight.bold)
                      //       ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Transform.rotate(
                angle: math.pi,
                child: CustomPaint(
                  size: const Size(25, 10),
                  painter: UpsideDownTrianglePainter(
                    Colors.red,
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
