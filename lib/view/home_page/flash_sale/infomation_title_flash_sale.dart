import 'package:flutter/material.dart';
import '../../../sizeconfig.dart';

class InformationTitleFlashSale extends StatelessWidget {
  const InformationTitleFlashSale({
    super.key,
    required Animation<double> animation,
  }) : _animation = animation;

  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: SizeConfig.screenWidth,
      margin: const EdgeInsets.only(right: 10, left: 10),
      decoration: BoxDecoration(
          color: Colors.red[500],
          //borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(20, 30)),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              topLeft: Radius.circular(5),
              bottomLeft: Radius.elliptical(60, 60),
              bottomRight: Radius.elliptical(60, 60))
          //gradient: LinearGradient(colors: [])
          ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Flash Sale  ",
            style: TextStyle(
              color: Colors.yellow[100],
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return Opacity(
                  opacity: _animation.value,
                  child: const Text(
                    '50%  ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 248, 247, 241),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ));
            },
          ),
          Text(
            "expired: 03/06",
            style: TextStyle(
              color: Colors.yellow[200],
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      )),
    );
  }
}
