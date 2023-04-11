import 'package:flutter/material.dart';
import 'package:project_intern/view/account_page/payment/payment_page.dart';
import 'package:project_intern/view/account_page/shipped/purchase_page.dart';
import 'package:project_intern/view/setting/setting_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.amberAccent.shade100,
        child: Column(
          children: [
            /** avatar container */
            Container(
              margin: const EdgeInsets.fromLTRB(0, 100, 0, 20),
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 52,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage:
                      AssetImage('assets/image/avatar-default.png'),
                ),
              ),
            ),

            /** username text box */
            const Center(
              child: Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),

            /** box part (unknown function) */
            Container(
              margin: const EdgeInsets.fromLTRB(50, 20, 5, 10),
              width: screenWidth * 0.8,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  /** Column for display wallet image button and text */
                  Column(
                    children: [
                      /** Container for wallet image button*/
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 30, 10, 5),
                          width: 55,
                          height: 55,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'assets/image/icons/denied_wallet.png'))),

                      /** Container for wallet text */
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 10, 10),
                        child: const Text('Wallet',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),

                  /** Column for display shipped image button and text */
                  Column(
                    children: [
                      /** Container for display shipped image button */
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 30, 10, 5),
                          width: 55,
                          height: 55,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PurchasePage()));
                              },
                              icon:
                                  Image.asset('assets/image/icons/truck.png'))),

                      /** Container for display shipped text */
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: const Text('Shipped',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),

                  /** Column for display payment method image button and texxt */
                  Column(
                    children: [
                      /** Container for display payment image button */
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 30, 10, 5),
                          width: 55,
                          height: 55,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PaymentPage()));
                              },
                              icon: Image.asset(
                                  'assets/image/icons/credit_card_icon.png'))),

                      /** Container for display payment text */
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: const Text('Payment',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),

                  /** Column for display contact image button and text */
                  Column(
                    children: [
                      /** Container for display contact image button */
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 30, 0, 5),
                          width: 55,
                          height: 55,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'assets/image/icons/contact_us.png'))),

                      /** Container for display contact text */
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                        child: const Text('Contact us',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /** setting, help and faq parts */
            Column(
              children: [
                /** setting container */
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 5, 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.settings),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingPage()),
                          );
                        },
                        child: SizedBox(
                            width: screenWidth * 0.6,
                            child: const Text(
                              'Setting',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            )),
                      ),
                      const Icon(Icons.navigate_next_rounded)
                    ],
                  ),
                ),

                /** help and support container */
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 5, 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.flag_circle),
                      TextButton(
                        onPressed: () {},
                        child: SizedBox(
                            width: screenWidth * 0.6,
                            child: const Text(
                              'Help & Support',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            )),
                      ),
                      const Icon(Icons.navigate_next_rounded)
                    ],
                  ),
                ),

                /** faq container */
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 5, 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                          width: 20,
                          height: 20,
                          child: ImageIcon(AssetImage(
                              'assets/image/icons/bubble_text.png'))),
                      TextButton(
                        onPressed: () {},
                        child: SizedBox(
                            width: screenWidth * 0.6,
                            child: const Text(
                              'FAQ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            )),
                      ),
                      const Icon(Icons.navigate_next_rounded)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
