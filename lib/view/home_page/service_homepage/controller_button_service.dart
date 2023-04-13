import 'package:flutter/material.dart';

class ControllerButtonService extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List<Widget> _widget_menu_service;
  final int _index;

  const ControllerButtonService(this._widget_menu_service, this._index,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(child: _widget_menu_service[_index - 1]),
    );
  }
}
