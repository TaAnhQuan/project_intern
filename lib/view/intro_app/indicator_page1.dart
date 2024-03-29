import 'package:flutter/material.dart';
import "package:project_intern/view/home_page/home_page.dart";

class IndicatorPage1 extends StatelessWidget {
  const IndicatorPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: maxHeight * 0.8,
      width: maxWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        gradient: const LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [
              //Color.fromARGB(255, 225, 248, 123),
              Colors.white,
              Colors.white,
              Color.fromRGBO(255, 238, 215, 1),
              Color.fromRGBO(255, 243, 210, 1),
              Colors.white,
              Colors.white,
            ],
            stops: [
              0.25,
              0.40,
              0.35,
              0.7,
              0.65,
              0.8
            ]),
      ),
      child: Stack(
        children: [
          ///SizedBox(height: 100,),
          ///
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: 50,
                width: 90,
                child: Row(
                  children: [
                    // TextButton(
                    //   onPressed: () {
                    //     // Navigator.push(
                    //     //     context,
                    //     //     MaterialPageRoute(
                    //     //         builder: (context) => Controller_option()));
                    //   },
                    //   child: const Text(
                    //     "Skip",
                    //     style: TextStyle(
                    //         color: Color.fromRGBO(37, 36, 36, 0.8),
                    //         fontSize: 20,
                    //         fontFamily: "Poppins"),
                    //   ),
                    // ),
                    // Icon(Icons.navigate_next_sharp)
                    SizedBox(
                      height: 35,
                      width: 85,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(0, 230, 10, 10),
                        ),
                        child: Row(
                          children: const [
                            Text(
                              "Skip",
                              style: TextStyle(
                                  color: Color.fromRGBO(37, 36, 36, 0.8),
                                  fontSize: 16,
                                  fontFamily: "Poppins"),
                            ),
                            Icon(
                              Icons.navigate_next_sharp,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: maxHeight * 0.8,
            width: maxWidth,
            //color: Colors.black,

            child: Column(
              children: [
                SizedBox(
                  height: maxHeight * 0.3,
                ),
                Container(
                  height: maxWidth * 0.7,
                  width: maxWidth * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //color: Colors.amber,
                    image: const DecorationImage(
                      image: ExactAssetImage('assets/image/secondScreen.png',
                          scale: 1),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: maxHeight * 0.7),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                SizedBox(
                  width: maxWidth * 0.25,
                ),
                Column(
                  children: const [
                    //SizedBox(height: maxheight*0.05,),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Get Any Thing Online",
                        style: TextStyle(
                            color: Color.fromARGB(255, 228, 86, 4),
                            fontSize: 30,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "You can buy anything from digital product",
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 15,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 100.0,
                      ),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "hardware within few clicks",
                          style: TextStyle(
                              color: Colors.orangeAccent, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}

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
