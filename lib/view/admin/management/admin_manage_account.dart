import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_intern/controller/admin_page_controller.dart';

class AdminManageAccount extends StatefulWidget {
  const AdminManageAccount({Key? key}) : super(key: key);

  @override
  State<AdminManageAccount> createState() => _AdminManageAccountState();
}

class _AdminManageAccountState extends State<AdminManageAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account Managing',
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
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            return ListView.builder(
                itemCount: streamSnapshot.data?.docs.length,
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
                          margin: const EdgeInsets.fromLTRB(20, 0, 55, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${streamSnapshot.data?.docs[index]['username']}',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                'Description for \n ${streamSnapshot.data?.docs[index]['username']}',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            TextButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Account Details'),
                                          content: Text(
                                              '${streamSnapshot.data?.docs[index]['username']}'),
                                          actions: [
                                            TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                    'Change Password')),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Back'))
                                          ],
                                        );
                                      });
                                },
                                child: const Text('Details')),
                            TextButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text(
                                              'Do you want do delete this account'),
                                          actions: [
                                            TextButton(

                                                onPressed: () {
                                                  var uid = streamSnapshot.data?.docs[index].id;
                                                  AdminPageController().deleteUser(uid!);
                                                  Navigator.pop(context);
                                                },

                                                child: const Text('Yes')),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('No')),
                                          ],
                                        );
                                      });
                                },
                                child: const Text('Delete')),
                          ],
                        )
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
