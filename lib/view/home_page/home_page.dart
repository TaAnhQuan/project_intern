import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Container(
          color: Colors.amber[100],
        ),
        
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //       BottomNavigationBarItem(
      //         icon:Icon(Icons.home,size: 28),
      //         label: "Trang 1"),
      //          BottomNavigationBarItem(
      //         icon:Icon(Icons.album_rounded,size: 28),
      //         label: "Trang 2"),
      //          BottomNavigationBarItem(
      //         icon:Icon(Icons.menu,size: 28),
      //         label: "Trang 3"),
      //     ],
      //     currentIndex: currentindex,
      //     selectedItemColor: Color.fromARGB(118, 158, 73, 1),
      //     unselectedItemColor: Color.fromRGBO(131, 129, 129, 1),
      //     onTap: (int index) {
      //       setState(() {
      //          currentindex = index;
                  
      //       });
      //     }, //tr
      // ),
           
       
    );
  }
}