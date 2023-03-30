import "package:flutter/material.dart";
class ProductDetail extends StatelessWidget {
   const ProductDetail({super.key, required this.content, required this.favorite, required this.price, required this.price1, required this.remainingproduct});
  final String content;
  final bool favorite;
  final double price;
  final double price1;
  final int remainingproduct;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
          child: SingleChildScrollView(
            
            child: Column(children:[
            Text("Noi dung: $content \n  ua thich $favorite \n gia: $price \n sale $price1 \n san pham con lai $remainingproduct", style: const TextStyle(fontSize: 18))
              ],),
          ),
        )),
    );
  }
}
