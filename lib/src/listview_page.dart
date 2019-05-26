import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _listNumbers = [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists Page'),
      ),
      body: _createList()
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: _listNumbers.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listNumbers[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300?image=$image'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }
}