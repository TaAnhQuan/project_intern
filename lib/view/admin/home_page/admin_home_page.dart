import 'package:flutter/material.dart';
import 'package:project_intern/view/admin/management/admin_manage_item.dart';

import '../../../controller/setting_controller.dart';
import '../../login/login.dart';
import '../management/admin_manage_account.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(15),
        color: Colors.white,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, screenWidth * 0.6, 10),
                  child: const Text('Managing',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    const ImageIcon(
                        AssetImage('assets/image/icons/user-manage-icon.png')),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdminManageAccount()),
                        );
                      },
                      child: SizedBox(
                          width: screenWidth * 0.7,
                          child: Text(
                            'Account Managing',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 16),
                          )),
                    ),
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    const ImageIcon(
                        AssetImage('assets/image/icons/package.png')),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdminManageItem()),
                        );
                      },
                      child: SizedBox(
                          width: screenWidth * 0.7,
                          child: Text(
                            'Manage Store Item',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 16),
                          )),
                    ),
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ImageIcon(
                      const AssetImage('assets/image/icons/truck.png'),
                      color: Colors.grey.shade700,
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const LegalPage()),
                        // );
                      },
                      child: SizedBox(
                          width: screenWidth * 0.7,
                          child: Text(
                            'Manage Shipping',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 16),
                          )),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, screenWidth * 0.6, 10),
                  child: const Text(
                    'Account',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.logout),
                    TextButton(
                      onPressed: () {
                        SettingController().signOut();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: SizedBox(
                          width: screenWidth * 0.7,
                          child: Text(
                            'SignOut',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 16),
                          )),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
