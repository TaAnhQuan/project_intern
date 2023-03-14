import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import "package:project_intern/view/homepage/home_page.dart";
class HomeControllerPage extends StatefulWidget {
   HomeControllerPage({super.key});

  @override
  State<HomeControllerPage> createState() => _HomeControllerPage();
}

class _HomeControllerPage extends State<HomeControllerPage> {
  int _selectedIndex = 0;
  int currentindex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 2: Shop',
      style: optionStyle,
    ),
    Text(
      'Index 3: Account',
      style: optionStyle,
    ),
    Text(
      'Index 4: Account',
      style: optionStyle,
    )
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        
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
            bottomNavigationBar: 
       Container(
        margin: EdgeInsets.all(5),
        //padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 12, 13, 36),
        ),
         child: Padding(  
           padding:  EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
           child: GNav(
            backgroundColor: Color.fromARGB(255, 12, 13, 36),
            gap: 20,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.grey,  // tao 1 box hinh tron co mau tuong ung bao quang Button
            //iconSize: 20,
            color: Colors.blue,
            duration: Duration( //  thoi gian doi cua click
              microseconds: 100,
            ),
            haptic: true ,
            
            mainAxisAlignment: MainAxisAlignment.center,
            padding: EdgeInsets.all(13),
            selectedIndex: _selectedIndex,
            onTabChange:(index){
              // print(index);
              setState(() {
                _selectedIndex = index;
              });
            },
            hoverColor: Colors.green, // mau noi sau khi click vao buttomappbar,  hien ram 0.01 ms
            tabs: [
            GButton(icon: Icons.home,text: "HOME", iconColor: Colors.white, iconSize: 30,),
            GButton(icon: Icons.favorite_border,text: "FAVORITE", iconColor: Colors.white, iconSize: 30,),
            GButton(icon: Icons.search, text : "SEARCH", iconColor: Colors.white, iconSize: 30,),
            GButton(icon: Icons.face_retouching_natural,text: "ACCOUNT", iconColor: Colors.white, iconSize: 30,),
      ]
      ),
         ),
       ),
    );
  }
}