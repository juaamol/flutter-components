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
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _listChildren(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listChildren(List<dynamic> data) {
    return data
        .map((item) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(item['text']),
                  leading: Icon(Icons.alarm, color: Colors.lightBlue),
                  trailing: Icon(Icons.arrow_right, color: Colors.lightBlue),
                  onTap: () {},
                ),
                Divider(),
              ],
            ))
        .toList();
  }
}
