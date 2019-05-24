import 'package:flutter/material.dart';
import 'package:flutter_components/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    print(menuProvider.options);
    return ListView(
      children: _listChildren(),
    );
  }

  List<Widget> _listChildren() {
    return [
      ListTile(
        title: Text('Hello world'),
      ),
      Divider(),
      ListTile(title: Text('Hello world')),
      Divider(),
      ListTile(title: Text('Hello world 3')),
    ];
  }
}
