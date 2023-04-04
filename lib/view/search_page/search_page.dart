import 'package:flutter/material.dart';

import 'custom_search_delegate.dart';


class SearchPage extends StatefulWidget with PreferredSizeWidget{
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {

    return AppBar(
        backgroundColor: Colors.amber[100],
        elevation: 0,
        toolbarOpacity: 1,
        title: const Text('Search', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
        actions: [
          IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: CustomSearchDelegate());
              },
              icon: const Icon(Icons.search), color: Colors.black)
        ],
      );
  }
}
