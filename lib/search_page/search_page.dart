import 'package:flutter/material.dart';

import 'custom_search_delegate.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {

    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarOpacity: 1,
        title: Text('Search', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
        actions: [
          IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: CustomSearchDelegate());
              },
              icon: const Icon(Icons.search), color: Colors.black)
        ],
      ),

      body: Container(
        color: Colors.white,
      ),
    );
  }
}
