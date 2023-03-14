import 'package:flutter/material.dart';
import 'package:project_intern/view/homepage/search_textfield_bodyhomepage.dart';
import '../../sizeconfig.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_intern/view/categories/categories_01.dart';

import '../categories/categories_02.dart';
import '../categories/categories_03.dart';
import 'home_header.dart';
import 'icon_btn_withcounter.dart';
class BodyHomePage extends StatefulWidget {
  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage>  with TickerProviderStateMixin{
  //const BodyHomePage({super.key});
  // late TabController _tapController;
   TabController? tabController;
   void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
  // @override
  @override
  Widget build(BuildContext context) {
    int index = 0;
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(5)
              ),
              child: HomeHeader(),
            ),
            Container(
              width: SizeConfig.screenWidth,
              height: 45,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 231, 205),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
              ),
              child: SizedBox(
                width: SizeConfig.screenWidth,
                //height: 0,
                child: TabBar(
                  
                  isScrollable: false,// neeus nhieu tab thi co the scrool
                  physics: BouncingScrollPhysics(),
                  indicatorWeight: 3,// tao thanh ngang o duoi
                  indicatorPadding: const EdgeInsets.all(0),
                  unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic), // khi clicj thi texxt thay doi font
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  padding: EdgeInsets.all(3),
                  //controller: ,
                  controller: tabController,
                  indicatorColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      color: Color.fromRGBO(204, 125, 0, 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black45,
                    tabs: [
                      Tab(
                        child: Container(
                           alignment: Alignment.center,
                            constraints: BoxConstraints.expand(),//Tạo các ràng buộc hộp mở rộng để lấp đầy các ràng buộc hộp khá
                          //color: Colors.amber,
                          child: Text(
                            " Vegetable ",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                        alignment: Alignment.center,
                            constraints: BoxConstraints.expand(),
                          child: Text(
                            "Fruits",
                            style: TextStyle(
                              fontSize: 15.5,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          alignment: Alignment.center,
                            constraints: BoxConstraints.expand(),
                          //color: Colors.amber,
                          child: Text(
                            "Dry Fruits",
                            style: TextStyle(
                              fontSize: 15.5,
                            ),
                          ),
                        ),
                      ),
                    ]
                 ),
              ),
            ),
            Container(
              height: SizeConfig.screenHeight-300,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: TabBarView(
                controller: tabController,
                children: [
                  Categories_01(),
                  Categories_02(),
                  Categories_03(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}






