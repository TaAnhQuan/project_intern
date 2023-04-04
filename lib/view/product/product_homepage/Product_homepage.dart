

// ignore_for_file: file_names
import 'dart:math';
import '../../../database/product.dart';
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
    final random = Random();
    final number = 4.0 + random.nextDouble();
    final text = number.toStringAsFixed(2);
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
               height: SizeConfig.screenWidth * 0.55,
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
                     padding: const EdgeInsets.only(bottom:40,top: 1),
                     child: Container(
                      height: SizeConfig.screenWidth * 0.45,
                      width: SizeConfig.screenWidth * 0.49,
                      //color: Colors.amber,
                      decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.ci(4)
                      ),
                       child: ClipRRect(  
                        borderRadius: BorderRadius.only(topRight: Radius.elliptical(10, 10), topLeft: Radius.elliptical(10, 10)),
                         
                         child: Image.asset(products[i].imageUrl,
                         fit: BoxFit.cover,
                         ),
                       ),
                     ),
                   ),
                 ),
                 Align(
                  alignment: Alignment.bottomCenter,
                   child: Container(
                    
                    height: 41,
                    width: SizeConfig.screenWidth * 0.47,
                     child: Align(
                   
                       alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text.rich(
                                TextSpan(text:  '${products[i].name}  \n',
                                  style: const TextStyle(fontSize: 13,fontWeight:FontWeight.w400 ,color: Colors.black,),
                                  children: [
                                   TextSpan(
                                     text:"|${products[i].price1} đ",//${products[i+1].productsold} - ${products[i+1].remainingproduct}" )
                                    style: const TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.w600),
                                    children: [
                                       TextSpan(text : " ${products[i].price} đ",
                                        style: const TextStyle(
                                       color: Colors.red,
                                       fontSize: 15,
                                       decoration: TextDecoration.lineThrough,
                                       fontWeight: FontWeight.w400
                                       ),
                                      )
                                    ]
                                   ),
                                 ],                      
                              )
                            ),
                            
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(children: [
                                    Icon(Icons.star_outlined, size: 14,color: Colors.deepOrange,),
                                    Text("(${text})",style:TextStyle(fontSize: 8)),
                                  ]),
                                ),
                                Container(
                   
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Text.rich(
                                      TextSpan(text: "sold ",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300),
                                        children: [TextSpan(
                                          text: "${products[i].remainingproduct}+",
                                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11)
                                        )]
                                      )
                                      ,
                                                          ),
                                  ),),
                              ],
                            )
                          ],
                          ),
                        ),
                     ),
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
                 height: SizeConfig.screenWidth * 0.55,
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
                     padding: const EdgeInsets.only(bottom:40,top: 1),
                     child: Container(
                      height: SizeConfig.screenWidth * 0.45,
                      width: SizeConfig.screenWidth * 0.49,


                       child: ClipRRect(  
                        borderRadius: const BorderRadius.only(topRight: Radius.elliptical(10, 10), topLeft: Radius.elliptical(10, 10)),
                        child: Image.asset(products[i+1].imageUrl,
                        fit: BoxFit.cover,
                        ),
                      ),
                     ),
                   ),),
                 Align(
                  alignment: Alignment.bottomCenter,
                   child: Container(
                    
                    height: 41,
                    width: SizeConfig.screenWidth * 0.47,
                     child: Align(
                   
                       alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text.rich(
                                TextSpan(text:  '${products[i+1].name}  \n',
                                  style: const TextStyle(fontSize: 13,fontWeight:FontWeight.w400 ,color: Colors.black,),
                                  children: [
                                   TextSpan(
                                     text:"|${products[i+1].price1} đ",//${products[i+1].productsold} - ${products[i+1].remainingproduct}" )
                                    style: const TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.w600),
                                    children: [
                                       TextSpan(text : " ${products[i+1].price} đ",
                                        style: const TextStyle(
                                       color: Colors.red,
                                       fontSize: 15,
                                       decoration: TextDecoration.lineThrough,
                                       fontWeight: FontWeight.w400
                                       ),
                                      )
                                    ]
                                   ),
                                 ],                      
                              )
                            ),
                            
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(children: [
                                    Icon(Icons.star_outlined, size: 14,color: Colors.deepOrange,),
                                    Text("(${text})",style:TextStyle(fontSize: 8)),
                                  ]),
                                ),
                                Container(
                   
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Text.rich(
                                      TextSpan(text: "sold ",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300),
                                        children: [TextSpan(
                                          text: "${products[i+1].remainingproduct}+",
                                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11)
                                        )]
                                      )
                                      ,
                                                          ),
                                  ),),
                              ],
                            )
                          ],
                          ),
                        ),
                     ),
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