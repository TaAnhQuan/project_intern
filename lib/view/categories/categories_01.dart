import 'dart:async';
import "package:flutter/material.dart";
import 'package:project_intern/sizeconfig.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
 
import '../home_page/flash_sale/flash_sale_view.dart';
import '../home_page/service_homepage/service.dart';
import '../product/product_homepage/Product_homepage.dart';
// ignore: camel_case_types
class Categories_01 extends StatefulWidget {
  const Categories_01({
    super.key,
  });

  @override
  State<Categories_01> createState() => _Categories_01State();
}

// ignore: camel_case_types
class _Categories_01State extends State<Categories_01> with TickerProviderStateMixin{
  //PageController _pageController1 = PageController(viewportFraction: 0.8);
   List<Widget> listOfFeatureContent =<Widget> [
      const FeatureContentNo1HomePage(),
      const  FeatureContentNo1i2HomePage(),
      const  FeatureContentNo1i3HomePage(),
      const  FeatureContentNo1i4HomePage(),
    ];
  //animation  
  late AnimationController _controller;
  late Animation<double> _animation;
    late AnimationController _controller1;
  bool _isVisible = true;
  List<String> data = ["1", "2", "3", "4", "5", "6"];
  final _scrollController = ScrollController(); // dieu khien cuon SingleScrollView
  //vsynclấy a TickerProviderlàm đối số , đó là lý 
  // SingleTickerProviderStateMixin như mô tả  TickerProvidercung cấp Ticker, 
  //điều đó có nghĩa đơn giản là nó cho ứng dụng của chúng tôi biết về bản cập nhật Khung (hoặc Cập nhật màn hình), 
  //để chúng tôi AnimationController

  //có thể tạo giá trị mới và chúng tôi có thể vẽ lại tiện ích động
  //vsync là thuộc tính đại diện cho TickerProvider (nghĩa là Tick tương 
  //tự như tick của đồng hồ, nghĩa là cứ sau một khoảng thời gian nhất định, 
  //TickerProvider sẽ hiển thị trạng thái lớp và vẽ lại đối tượng.)
   @override
     void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
      
    )..repeat(reverse: true);
    //_animation = Tween<double>(begin: 20, end: 60).animate(_controller);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    
   
  _controller1 = AnimationController(
        duration: const Duration(milliseconds: 500),
        vsync: this,
      )..repeat(reverse: true); 
      Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          _isVisible = !_isVisible;
        });
        if (_isVisible) {
          _controller1.forward();
        } else {
          _controller1.stop();
        }
      }
      );
    }


  
  //Tween Animation: Đây là một hoạt ảnh đơn giản cho phép bạn chuyển đổi suôn sẻ 
  //giữa hai giá trị. Ví dụ: bạn có thể sử dụng Tween Animation để làm mờ dần một widget.
    @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //bool checkpage = true;
    //int pageIndex = 0;
    
    PageController pageController = PageController(viewportFraction: 0.8, initialPage: 0);
    return SingleChildScrollView(
      controller: _scrollController,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 200),
      child: Column(
        
        children: [
          //Cliprect
          Container(
            
            height: SizeConfig.screenHeight*0.2,
            //width: SizeConfig.screenWidth,
           
          //   margin: EdgeInsets.symmetric(
          //   horizontal: getProportionateScreenWidth(10),
          //   vertical: getProportionateScreenHeight(5)
          // ),
          decoration: BoxDecoration(
            //color: Colors.amber,
            borderRadius: BorderRadius.circular(30)
            
          ),
          child: Stack(
            children: [
             
          
             PageView.builder(
              controller:pageController ,
              itemCount: listOfFeatureContent.length,
              itemBuilder: (_,index)=> Container(
                child: listOfFeatureContent[index]
              ),
        
             ),
              SizedBox(
              height: SizeConfig.screenHeight*0.195,
              //width: SizeConfig.screenWidth,
              child: Align(
                      
                alignment: Alignment.bottomCenter,
                child: Container(
                margin: const EdgeInsets.only(top: 5),
                child: SmoothPageIndicator(
                  controller:
                      pageController, //_controller,//_pageViewController,
                  count: 4,
                  //axisDirection: Axis.vertical,
                  //_controller.nextPage(duration: duration, curve: curve)
                  effect:const WormEffect(
         
                    spacing:  8.0,
                    radius:  1.0,
                    dotWidth:  10,
                    dotHeight:  10,
                    paintStyle:  PaintingStyle.stroke,
                    strokeWidth:  1.5,
                    dotColor:  Colors.grey,
                    activeDotColor:  Colors.blue,
                  ),
                 
                ),
              ),
                    ),
            ),        
              
              ]
          ),
          ) ,
         Service(),
         FlashSale(animation: _animation, isVisible: _isVisible),
         const ProductHomepage(),
        //SizedBox(height: SizeConfig.screenWidth*0.5)
        ],
      ),
    );
  }
}




//Thanh do thong tin sale


class AnimationLinghtFlashSale extends StatelessWidget {
  const AnimationLinghtFlashSale({
    super.key,
    required bool isVisible,
    required Animation<double> animation,
  }) : _isVisible = isVisible, _animation = animation;

  final bool _isVisible;
  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 10, // adjust top position as per your requirement
        left: SizeConfig.screenWidth*0.902, // adjust left position as per your requirement
        child:AnimatedOpacity(
            opacity: _isVisible ? 1 : 0,
            duration: const Duration(milliseconds: 500),
            child: AnimatedBuilder(
    animation: _animation,
    builder: (BuildContext context, Widget? child) {
      return Opacity(
        opacity: _animation.value,
         child: Transform.rotate(
           angle: 0.3,
           child: Image.asset(
             "assets/image/icons/light.png",
             height: 40,
             width: 40,
             color: const Color.fromARGB(255, 27, 17, 2),
           ),
           
         )
        );
      },),
      ),
    );
  }
}


//4 anh cua man indicator
class FeatureContentNo1i4HomePage extends StatelessWidget {
  const FeatureContentNo1i4HomePage({
    super.key,
  });

  @override
Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
        //color: Color.fromARGB(255, 89, 170, 236),
        borderRadius: BorderRadius.circular(10),
      ),
    
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), 
        child: Image.asset("assets/image/dragonballs.jpg",
        height:SizeConfig.screenHeight*0.15 ,
        fit: BoxFit.cover,
        ),
      ),
      );
  }
}

class FeatureContentNo1i3HomePage extends StatelessWidget {
  const FeatureContentNo1i3HomePage({
    super.key,
  });

  @override
Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), 
        child: Image.asset("assets/image/dragonballs.jpg",
        height:SizeConfig.screenHeight*0.15 ,
        fit: BoxFit.cover,
        ),
      ),
      );
  }
}

class FeatureContentNo1i2HomePage extends StatelessWidget {
  const FeatureContentNo1i2HomePage({
    super.key,
  });

@override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
       // color: Color.fromARGB(255, 89, 170, 236),
        borderRadius: BorderRadius.circular(10),
      ),
     
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), 
        child: Image.asset("assets/image/dragonballs.jpg",
        height:SizeConfig.screenHeight*0.15 ,
       
        fit: BoxFit.cover,
        ),
      ),//Text("data"),
      );
  }
}

class FeatureContentNo1HomePage extends StatelessWidget {
  const FeatureContentNo1HomePage({
    super.key,
  });

  @override
    Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
    
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), 
        child: Image.asset("assets/image/dragonballs.jpg",
        height:SizeConfig.screenHeight*0.15 ,
        fit: BoxFit.cover,
        ),
      ),
      );
  }
}


// 

class UpsideDownTrianglePainter extends CustomPainter {
  final Color color;
  
  UpsideDownTrianglePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;

    Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
