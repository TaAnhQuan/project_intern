import "package:flutter/material.dart";

import "../../../sizeconfig.dart";
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
             color: const Color.fromARGB(255, 250, 195, 17),
           ),
           
         )
        );
      },),
      ),
    );
  }
}

