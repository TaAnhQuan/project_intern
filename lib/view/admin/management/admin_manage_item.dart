import 'package:flutter/material.dart';

class AdminManageItem extends StatefulWidget {
  const AdminManageItem({Key? key}) : super(key: key);

  @override
  State<AdminManageItem> createState() => _AdminManageItemState();
}

class _AdminManageItemState extends State<AdminManageItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Item Store Managing',
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
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/image/avatar-default.png',
                    width: 70,
                    height: 70,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 60, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Item $index',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          'Description for item $index',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16),
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
                  ),
                  Column(
                    children: [
                      TextButton(onPressed: () {}, child: const Text('Update')),
                      TextButton(onPressed: () {}, child: const Text('Delete')),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
