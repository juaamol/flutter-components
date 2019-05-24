import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> options = const ['One', 'Two', 'Three', 'Four', 'Five'];

  const HomePageTemp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components temp'),
      ),
      body: ListView(
        children: _shortCreateItems(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> items = new List<Widget>();

    options.forEach((option) {
      items
        ..add(new ListTile(
          title: Text(option),
        ))
        ..add(Divider());
    });
    return items;
  }

  List<Widget> _shortCreateItems() {
    return options
        .map((option) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(option),
                  subtitle: Text('Subtitle for $option'),
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                Divider(),
              ],
            ))
        .toList();
  }
}
