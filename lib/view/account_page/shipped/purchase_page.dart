import 'package:flutter/material.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Purchase item',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.grey.shade700,
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Image.asset(
                  'assets/image/avatar-default.png',
                  width: 70,
                  height: 70,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Item $index',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        'Description for item $index',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Text.rich(
                        TextSpan(
                            text: 'Number of item: ',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontStyle: FontStyle.italic),
                            children: [
                              TextSpan(
                                text: '$index',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
