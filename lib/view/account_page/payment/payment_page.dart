import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
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
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Image.asset('assets/image/credit_card_payment.png'),
            ),
            Material(
              elevation: 10,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                width: screenWidth * 0.9,
                height: 230,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey.shade300),
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            hintText: 'Card Number',
                            hintStyle: const TextStyle(
                                fontSize: 20, color: Colors.grey)),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey.shade300),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade300,
                                filled: true,
                                hintText: 'Day',
                                hintStyle: const TextStyle(
                                    fontSize: 20, color: Colors.grey)),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey.shade300),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade300,
                                filled: true,
                                hintText: 'Month',
                                hintStyle: const TextStyle(
                                    fontSize: 20, color: Colors.grey)),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey.shade300),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade300,
                                filled: true,
                                hintText: 'Year',
                                hintStyle: const TextStyle(
                                    fontSize: 20, color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey.shade300),
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            hintText: 'Name On Card',
                            hintStyle: const TextStyle(
                                fontSize: 20, color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 100, 10, 10),
              child: SizedBox(
                height: 50,
                width: screenWidth * 0.6,
                child: TextButton(
                    onPressed: () {},
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.redAccent),
                    child: const Center(
                        child: Text('Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
