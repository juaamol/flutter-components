import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.lightGreen,
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JA'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://s24597.pcdn.co/wp-content/uploads/2017/11/Tube-sock-snowman-craft-project-13.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          height: 400,
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
