import 'package:flutter/material.dart';

import '../../../sizeconfig.dart';
import 'controller_button_service.dart';

class Service extends StatelessWidget {
  Service({super.key});

  final List<Widget> _texts = [
    const Text("hi"),
    const Text("hi1"),
    const Text("hi2"),
    const Text("hi3"),
    const Text("hi4")
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> service = [
      {
        "icon": const Icon(
          Icons.favorite,
          size: 26,
          color: Colors.pink,
        ),
        "text": "Favorite"
      },
      {
        "icon": const Icon(
          Icons.legend_toggle,
          size: 26,
        ),
        "text": "Flash Deal"
      },
      {
        "icon": const Icon(
          Icons.security,
          size: 26,
          color: Colors.blue,
        ),
        "text": "Flash Deal"
      },
      {
        "icon": const Icon(
          Icons.add_business,
          size: 26,
        ),
        "text": "Add Business"
      },
      {
        "icon": const Icon(Icons.apps, size: 26, color: Colors.blue),
        "text": "Flash Deal"
      }
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          service.length,
          (index) => ListServiceHomePage(
            icon: service[index]["icon"],
            text: service[index]["text"],
            press:
                //() => _setState(index)))
                () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ControllerButtonService(_texts, index + 1),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class ListServiceHomePage extends StatelessWidget {
  const ListServiceHomePage({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  final String text;
  final Icon icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        elevation: 5,
        child: Container(
          margin: const EdgeInsets.all(2),
          height: getProportionateScreenHeight(SizeConfig.screenHeight * 0.12),
          width: getProportionateScreenWidth(SizeConfig.screenWidth * 0.15),
          child: AspectRatio(
            aspectRatio: 1,
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    height: getProportionateScreenHeight(51),
                    width: getProportionateScreenWidth(51),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 212, 190),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: icon,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 11),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
