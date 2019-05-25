import 'package:flutter/material.dart';
import 'package:flutter_components/providers/menu_provider.dart';
import 'package:flutter_components/utils/string_to_icon_util.dart';

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
          children: _listChildren(context: context, data: snapshot.data),
        );
      },
    );
  }

  List<Widget> _listChildren({BuildContext context, List<dynamic> data}) {
    return data
        .map((item) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(item['text']),
                  leading: getIcon(item['icon']),
                  trailing: Icon(Icons.arrow_right, color: Colors.lightBlue),
                  onTap: () {
                    Navigator.pushNamed(context, item['route']);
                  },
                ),
                Divider(),
              ],
            ))
        .toList();
  }
}
