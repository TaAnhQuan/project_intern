// ignore: file_names

import '../../../database/flashsale_item.dart';
import '../../../sizeconfig.dart';
import "package:flutter/material.dart";

import '../widget/product_detail/product_detail.dart';
class ProductHomepage extends StatelessWidget {
   const ProductHomepage({
    super.key,
  });
//  final isFavorite =
//         Provider.of<Favorites>(context).favoriteIds.contains(product.id);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < products.length; i += 2)
     Row(
       children: [
         Expanded(
           child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) =>ProductDetail(content: products[i].content,favorite:products[i].favorite ,price1: products[i].price, price: products[i].price1,remainingproduct: products[i].remainingproduct,)) );
              // print(" ${products[i].name} : NOI DUNG ${products[i].content}+ " " +");
               
            },
             child: Container(
               height: SizeConfig.screenWidth * 0.4,
               width: SizeConfig.screenWidth * 0.3,
               margin: const EdgeInsets.all(5),
               decoration: const BoxDecoration(
                  boxShadow: [
                     BoxShadow(
                      color: Colors.red,
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //
                    BoxShadow(
                    color: Colors.yellowAccent,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                  ),
                  ],
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 20)),
                  
                 ),
               child: Stack(children: [
                 Align(
                   alignment: Alignment.center,
                   child: Padding(
                     padding: const EdgeInsets.only(bottom:40,top: 2),
                     child: ClipRRect(
                       
                       child: Image.asset(products[i].imageUrl,),
                     ),
                   ),
                 ),
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Text.rich(
                     TextSpan(text:  '${products[i].name} - ${products[i].price1} \n',
                         children: [
                           TextSpan(
                             text:"${products[i].productsold} - ${products[i].remainingproduct}" )
                         ],                      
                     )
                     
                     ),
                  ),
           
              
                 ]
                 ),
                  
             ),
           ),
         ),
         if (i + 1 < products.length )
           Expanded(
             child: InkWell(
              onTap: (){
                // ignore: avoid_print
                print(" ${products[i+1].name} : NOI DUNG ${products[i+1].content}+ " " +");
              },
               child: Container(
                 height: SizeConfig.screenWidth * 0.4,
                 width: SizeConfig.screenWidth * 0.3,
                 margin: const EdgeInsets.all(5),
                 decoration: const BoxDecoration(
                  boxShadow: [
                     BoxShadow(
                      color: Colors.blue,
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //
                    BoxShadow(
                    color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                  ),
                  ],
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 20)),
                  
                 ),

                 
                child: Stack(children: [
                 Align(
                   alignment: Alignment.center,
                   child: Padding(
                     padding: const EdgeInsets.only(bottom:40,top: 2),
                     child: ClipRRect(
                   child: Image.asset(products[i+1].imageUrl,),
                 ),
                   ),),
                 Align(
                   alignment: Alignment.bottomCenter,
                    child: Text.rich(
                     TextSpan(text:  '${products[i+1].name} - ${products[i+1].price1} \n',
                         children: [
                           TextSpan(
                             text:"${products[i+1].productsold} - ${products[i+1].remainingproduct}" )
                         ],                      
                      )
                     ),
                 ),
                 ]),
               ),
             ),  
           ),
         if (i + 1 == products.length && products.length %2 ==1)
           Expanded(
             child: Container(
               height: SizeConfig.screenWidth * 0.4,
               width: SizeConfig.screenWidth * 0.3,
               margin: const EdgeInsets.all(5),
               color: Colors.blue,
               child: Column(
                 children: const [

                   
                 ],
               ),
             ),   
           ),
           
           
    
       ],
     ),
      ],  
    );
  }
}


                  //  IconButton(
                  //   icon: Icon(
                  //     isFavorite ? Icons.favorite : Icons.favorite_border,
                  //     color: isFavorite ? Colors.red : null,
                  //   ),
                  //   onPressed: () {
                  //     Provider.of<Favorites>(context, listen: false)
                  //         .toggleFavorite(product.id);
                  //   },
                  // ),