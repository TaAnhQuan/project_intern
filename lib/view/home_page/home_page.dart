import 'package:flutter/material.dart';
import 'body_homepage.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = "/homepage";
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: BodyHomePage(),
    );
  }
}
// class HomePage extends StatefulWidget {
  

//    HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePage();
// }

// class _HomePage extends State<HomePage> {
//   static String routeName = "/home_page";

  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       // body:Center(
//       //   child:               Container(
//       //              child: TextField(
//       //               keyboardType: TextInputType.text,
//       //               textAlign: TextAlign.start,
//       //               decoration: InputDecoration(
//       //                   prefixIcon: const Icon(Icons.search),
//       //                   hintText: 'Search',
//       //                   border: OutlineInputBorder(),
//       //                   contentPadding: EdgeInsets.only()
//       //                   ),
//       //             ),
//       //           ),
        
//       // ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   items: [
//       //       BottomNavigationBarItem(
//       //         icon:Icon(Icons.home,size: 28),
//       //         label: "Trang 1"),
//       //          BottomNavigationBarItem(
//       //         icon:Icon(Icons.album_rounded,size: 28),
//       //         label: "Trang 2"),
//       //          BottomNavigationBarItem(
//       //         icon:Icon(Icons.menu,size: 28),
//       //         label: "Trang 3"),
//       //     ],
//       //     currentIndex: currentindex,
//       //     selectedItemColor: Color.fromARGB(118, 158, 73, 1),
//       //     unselectedItemColor: Color.fromRGBO(131, 129, 129, 1),
//       //     onTap: (int index) {
//       //       setState(() {
//       //          currentindex = index;
                  
//       //       });
//       //     }, //tr
//       // ),
           
       
//     );
//   }
// }