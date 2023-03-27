import 'package:flutter/material.dart';

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
        title: Text('Account Managing', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade700),),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.grey.shade700,
        ),
      ),

      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index){
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
                          Text('User $index', style: const TextStyle(color: Colors.black, fontSize: 20),),
                          Text('Description for user $index', style: const TextStyle(color: Colors.black, fontSize: 16),)
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          TextButton(
                              onPressed: (){},
                              child: Text('Update')
                          ),

                          TextButton(
                              onPressed: (){},
                              child: Text('Delete')
                          ),
                        ],
                      )
                    )
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
