import 'package:flutter/material.dart';

import '../../sizeconfig.dart';
import '../categories/categories_01.dart';
import '../categories/categories_02.dart';
import '../categories/categories_03.dart';
import 'homepage_headerall/home_header.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({super.key});

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage>
    with TickerProviderStateMixin {
  //const BodyHomePage({super.key});
  // late TabController _tapController;
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  // @override
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Stack(children: [
        CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ControllerBodyHomePage(tabController: tabController),
                // UI thanh tab categories
                Container(
                  height: SizeConfig.screenHeight,
                  width: SizeConfig.screenWidth,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 248, 248, 140),
                  ),
                  child: TabBarView(controller: tabController, children: const [
                    Categories_01(),
                    Categories_02(),
                    Categories_03(),
                  ]),
                )
              ],
            ),
          ),
        ]),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(0),
              vertical: getProportionateScreenHeight(5)),
          child: const HomeHeader(),
        ),
      ]),
    );
  }
}

class ControllerBodyHomePage extends StatelessWidget {
  const ControllerBodyHomePage({
    super.key,
    required this.tabController,
  });

  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    //Tabbar cua man Home cac the loai
    return TabbarHomePage(tabController: tabController);
  }
}

class TabbarHomePage extends StatelessWidget {
  const TabbarHomePage({
    super.key,
    required this.tabController,
  });

  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: 40,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 248, 231, 205),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: SizedBox(
        width: SizeConfig.screenWidth,
        //height: 0,
        child: TabBar(
            isScrollable: false,
            // neeus nhieu tab thi co the scrool
            physics: const BouncingScrollPhysics(),
            indicatorWeight: 3,
            // tao thanh ngang o duoi
            indicatorPadding: const EdgeInsets.all(0),
            unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),
            // khi clicj thi texxt thay doi font
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            padding: const EdgeInsets.all(3),
            //controller: ,
            controller: tabController,
            indicatorColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              color: const Color.fromRGBO(204, 125, 0, 1),
              borderRadius: BorderRadius.circular(6),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black45,
            tabs: [
              Tab(
                child: Container(
                  alignment: Alignment.center,
                  constraints: const BoxConstraints.expand(),
                  //Tạo các ràng buộc hộp mở rộng để lấp đầy các ràng buộc hộp khá
                  //color: Colors.amber,
                  child: const Text(
                    " Tab 1 ",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  alignment: Alignment.center,
                  constraints: const BoxConstraints.expand(),
                  child: const Text(
                    "Tab 2",
                    style: TextStyle(
                      fontSize: 15.5,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  alignment: Alignment.center,
                  constraints: const BoxConstraints.expand(),
                  //color: Colors.amber,
                  child: const Text(
                    "Tab 3",
                    style: TextStyle(
                      fontSize: 15.5,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
