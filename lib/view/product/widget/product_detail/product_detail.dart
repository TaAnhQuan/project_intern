import "package:flutter/material.dart";
import '../../../../sizeconfig.dart';
import '../../../../database/flashsale_item.dart';
import '../../../home_page/homepage_headerall/home_header.dart';


class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  SafeArea(
      child: Stack(
        children: [
            
            SafeArea(
              child: Container(
                decoration: const BoxDecoration(
                  //color: Colors.amber,
                ),
                child: SingleChildScrollView(
                  
                  child: Column(children:[
                  Container(
                    height: SizeConfig.screenHeight*0.45,
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      
                    ),
                    child: Image.asset(product.imageUrl
                    ,fit: BoxFit.cover,),
                  ),
                  Text("Noi dung: $product.content \n  ua thich ${product.favorite} \n gia: ${product.price} \n sale ${product.price1} \n san pham con lai $product.remainingproduct", style: const TextStyle(fontSize: 18))
                    ],),
                ),
              )),
          
         Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(0),
                  vertical: getProportionateScreenHeight(5)
                ),
                child: const HomeHeader(),
              ),
      ]),
    );
  }
}
