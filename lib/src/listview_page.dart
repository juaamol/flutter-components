import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listNumbers = new List();
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addTen();

    _scrollController.addListener(() {
      print('Scroll');

      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lists Page'),
        ),
        body: Stack(
          children: <Widget>[_createList(), _createLoading()],
        ));
  }

  Widget _createList() {
    return RefreshIndicator(
      child: ListView.builder(
      controller: _scrollController,
      itemCount: _listNumbers.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listNumbers[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300?image=$image'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    ),
    onRefresh: _obtainPageOne,
    );
  }

  Future<void> _obtainPageOne() {
    final duration = new Duration(milliseconds: 2000);

    return Future.delayed(duration, () {
        _listNumbers.clear();
        _lastItem++;
        _addTen();
      });
  }

  Widget _createLoading() {
    if(_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          )
        ],
      );
    }

    return Container();
  }

  void _addTen() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _listNumbers.add(_lastItem);
    }

    setState(() {});
  }

  Future _fetchData() async {
    _isLoading = true;
    setState(() {});

    new Timer(Duration(milliseconds: 2000), _httpResponse);
  }

  void _httpResponse() {
    _isLoading = false;

    _addTen();

    _scrollController.animateTo(
      _scrollController.position.pixels + 100.0,
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn
    );
    
  }
}
