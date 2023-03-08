import 'package:prokect_intern/view/intro app/indicator_page1.dart';
import 'package:flutter/material.dart';
class Indicatoe_page3 extends StatelessWidget {
  const Indicatoe_page3({super.key});

  @override
  Widget build(BuildContext context) {
     double maxwitdth = MediaQuery.of(context).size.width; 
    double maxheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
      height: maxheight*0.8,
      width: maxwitdth,
      //color: Colors.amber,
      //   child:  Container( 
      //       decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //           colors:[
      //             Colors.yellow,
      //             Colors.red,
      //             Colors.yellow,
      //             Colors.red,
      //           ],
      //           begin: Alignment.topRight,
      //           end: Alignment.bottomLeft,
      //            stops: [       0.4,
      //                         0.0,
      //                         0.7,
      //                         0.6,
      //                       ],
      //         //    ),
      //   //         gradient: LinearGradient(
      //   //   colors: [
      //   //     Colors.red,
      //   //      Colors.yellow,
      //   //      Colors.black
      //   //   ],
      //   //   begin: Alignment(-0.7,12),
      //   //   end: Alignment(1,-2),
      //   // ),
      //   //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
      //         )
      //       ) ,
      //       ),
      // );
       decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  gradient: LinearGradient(begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight, colors: [
                    //Color.fromARGB(255, 225, 248, 123),
                    Colors.white,
                    Colors.white,
                    Color.fromRGBO(255, 238, 215, 1),
                    Color.fromRGBO(255, 243, 210, 1),
                    Colors.white,
                    Colors.white,
                  ], stops: [
                    0.25,
                    0.40,
                    0.35,
                    0.7,
                    0.65,
                    0.8
                  ]),
                ),
     child:  Stack(
       children: [
        ///SizedBox(height: 100,),
        Container(
          height: maxheight*0.8,
          width: maxwitdth,
          //color: Colors.black,
        
          child: Column(
            children: [
              SizedBox(height: maxheight*0.3,),
              Container(
                
                 height: maxwitdth*0.7,
                width: maxwitdth*0.7,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Colors.amber,
                  image: new DecorationImage(
                                
                                image: new ExactAssetImage(
                                    'assets/image/thirdScreen.png',
                                    scale: 1,
                                    
                                    
                                    ),
                                    
                                fit: BoxFit.contain,
                              ),
                ),
                // child: Image.asset("assets/image/picture1.png",
                //         height: 300,
                //         width: 300,
                //         fit: BoxFit.contain,
                        ),
            ],
          ),
        ),
         Padding(
           padding:  EdgeInsets.only(top: maxheight*0.7),
           child: Align(
            alignment: Alignment.bottomCenter,
                 child: Row(children: [
            SizedBox(width: maxwitdth*0.25,),
            Column(
            children: [
              //SizedBox(height: maxheight*0.05,),
              
              Align(
                alignment: Alignment.bottomRight,
                child:Text("Get Any Thing Online",style: TextStyle(color: Color.fromARGB(255, 228, 86, 4),fontSize: 30,  decoration: TextDecoration.none, fontWeight: FontWeight.bold),
              ),),
              Align(
                alignment: Alignment.bottomRight,
              child: Text("You can buy anything from digital product",style: TextStyle(color: Colors.orangeAccent,fontSize: 15,  decoration: TextDecoration.none),
              ),),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                child:Text("hardware within few clicks",style: TextStyle(color: Colors.orangeAccent,fontSize: 15),
                 ),),
              ),
             ],
           ),]),
         ),
         ),

         

       ],
     ),)
    );
  }
  }
  //   double maxwitdth = MediaQuery.of(context).size.width; 
  //   double maxheight = MediaQuery.of(context).size.height;
  //   return Card(
  //     child:  Container(
  //         height:maxheight*0.6,
  //         width: maxwitdth,
  //         //color: Colors.red,
  //          child: Container(
          
  //           //height: 100.0,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(6.0),
  //             gradient: LinearGradient(begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight, colors: [
  //         Color.fromARGB(255, 225, 248, 123),
  //               Color(0xFF148535),
  //               Color(0XFF0D6630),
  //               Color(0XFF0D6630),
  //               Color(0xFF148535),
  //               Color.fromARGB(255, 225, 248, 123),
  //             ], stops: [
  //               0.25,
  //               0.40,
  //               0.35,
  //               0.7,
  //               0.65,
  //               0.8
  //             ]),
  //           ),
            
              
  //             child: Align(
  //               //alignment: EdgeInsets.,
  //               child: Row(children: [
  //                 SizedBox(width: maxwitdth*0.25,),
  //                 Column(
  //                 children: [
  //                   SizedBox(height: maxheight*0.6,),
                    
  //                   Align(
  //                     alignment: Alignment.bottomRight,
  //                     child:Text("Get Any Thing Online",style: TextStyle(color: Color.fromARGB(255, 228, 86, 4),fontSize: 30,  decoration: TextDecoration.none, fontWeight: FontWeight.bold),
  //                   ),),
  //                   Align(
  //                     alignment: Alignment.bottomRight,
  //                   child: Text("You can buy anything from digital product",style: TextStyle(color: Colors.orangeAccent,fontSize: 15,  decoration: TextDecoration.none),
  //                   ),),
  //                   Align(
  //                     alignment: Alignment.bottomRight,
  //                   child:Text("hardware within few clicks",style: TextStyle(color: Colors.orangeAccent,fontSize: 15),
  //                   ),),
  //                 ],
  //               ),]),
  //             ),
           
  //           ),
  //          ),
  //   );
  // }
//}
