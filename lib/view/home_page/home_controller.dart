import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import "package:project_intern/view/home_page/home_page.dart";
class HomeControllerPage extends StatefulWidget {
   const HomeControllerPage({super.key});

  @override
  State<HomeControllerPage> createState() => _HomeControllerPage();
}

class _HomeControllerPage extends State<HomeControllerPage> {
  int _selectedIndex = 0;
  int currentindex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Text(
      'Index 2: Shop',
      style: optionStyle,
    ),
    const Text(
      'Index 3: Account',
      style: optionStyle,
    ),
    const Text(
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
      bottomNavigationBar: 
      
       Container(
        
          
         child: Container(
          margin: const  EdgeInsets.all(3),
          //padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            borderRadius: BorderRadius.circular(15),
            color: const  Color.fromARGB(255, 12, 13, 36),
          ),
           child: Padding(  
             padding:  const  EdgeInsets.symmetric(horizontal: 3 , vertical: 5),
             child: GNav(
              backgroundColor:Color.fromARGB(255, 6, 7, 39),
              gap: 15,
              activeColor: const Color.fromARGB(255, 6, 7, 39),
              tabBackgroundColor: const Color.fromRGBO(241, 235, 235, 0.98),//Colors.grey,  // tao 1 box hinh tron co mau tuong ung bao quang Button
              //iconSize: 20,
              color: Colors.orange,
              duration: const  Duration( //  thoi gian doi cua click
                microseconds: 100,
              ),
              haptic: true ,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              padding: const  EdgeInsets.all(6),
              selectedIndex: _selectedIndex,
              onTabChange:(index){
                setState(() {
                  _selectedIndex = index;
                });
              },
              hoverColor: Colors.green, // mau noi sau khi click vao buttomappbar,  hien ram 0.01 ms
              tabs: const [
              GButton(icon: Icons.home,text: "HOME", iconColor: Colors.white, iconSize: 30,),
              GButton(icon: Icons.favorite_border,text: "FAVORITE", iconColor: Colors.white, iconSize: 30,),
              GButton(icon: Icons.search, text : "SEARCH", iconColor: Colors.white, iconSize: 30,),
              GButton(icon: Icons.face_retouching_natural,text: "ACCOUNT", iconColor: Colors.white, iconSize: 30,),
             ]
             ),
           ),
         ),
       ),
    );
  }
}

