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
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ProductDetail(product: products[i],)) );
                    // print(" ${products[i].name} : NOI DUNG ${products[i].content}+ " " +");
                    
            },
             child: Container(
               height: SizeConfig.screenWidth * 0.5,
               width: SizeConfig.screenWidth * 0.4,
               margin: const EdgeInsets.all(5),
               decoration: const BoxDecoration(
                  boxShadow: [
                     BoxShadow(
                      color: Color.fromARGB(255, 243, 188, 37),
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //
                    BoxShadow(
                    color: Color.fromARGB(255, 248, 248, 245),
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
                     padding: const EdgeInsets.only(bottom:40),
                     child: Container(
                       height: SizeConfig.screenWidth * 0.45-35,
                      width: SizeConfig.screenWidth * 0.45-35,
                       child: ClipRRect(
                         
                         child: Image.asset(products[i].imageUrl,
                         fit: BoxFit.cover,
                         ),
                       ),
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
                
                //print(" ${products[i+1].name} : NOI DUNG ${products[i+1].content}+ " " +");
                Navigator.push(context, MaterialPageRoute(builder: (context) =>ProductDetail(product: products[i+1],)) );
              },
               child: Container(
                 height: SizeConfig.screenWidth * 0.5,
                 width: SizeConfig.screenWidth * 0.4,
                 margin: const EdgeInsets.all(5),
                 decoration: const BoxDecoration(
                  boxShadow: [
                     BoxShadow(
                      color: Color.fromARGB(255, 230, 245, 30),
                      offset: Offset(
                        1.0,
                        1.0,
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
                     child: Container(
                      height: SizeConfig.screenWidth * 0.45-35,
                      width: SizeConfig.screenWidth * 0.45-35,
                       child: ClipRRect(
                                        child: Image.asset(products[i+1].imageUrl,
                                        fit: BoxFit.cover,
                                        ),
                                      ),
                     ),
                   ),),
                 Align(
                   alignment: Alignment.bottomCenter,
                    child: Text.rich(
                     TextSpan(text:  '${products[i+1].name}  \n',
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold ,color: Colors.black,),
                         children: [
                           TextSpan(
                             text:"${products[i+1].price1} đ",//${products[i+1].productsold} - ${products[i+1].remainingproduct}" )
                            style: TextStyle(fontSize: 16,color: Colors.red),
                           ),
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
               //color: Colors.blue,
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