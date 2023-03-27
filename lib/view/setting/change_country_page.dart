import 'package:flutter/material.dart';
import 'package:project_intern/const_value.dart';

class ChangeCountryPage extends StatefulWidget {
  const ChangeCountryPage({Key? key}) : super(key: key);

  @override
  State<ChangeCountryPage> createState() => _ChangeCountryPageState();
}

class _ChangeCountryPageState extends State<ChangeCountryPage> {
  @override
  Widget build(BuildContext context) {

    var countries = LIST_COUNTRIES;
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade700),),
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
        body: ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index){
              final country = countries[index];
              return ListTile(
                title: Container(
                  child: TextButton(
                    onPressed: (){},
                    child: Text(country, style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                )
              );
            }),
    );
  }
}
