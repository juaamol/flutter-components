import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card Page'),
        ),
        body: ListView(
          children: <Widget>[_cardType1(), _cardType2()],
          padding: EdgeInsets.all(10.0),
        ));
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Card type 1'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,' +
                'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' +
                'Ut enim ad minim veniam,' +
                'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Accept'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      child: Column(children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://mir-s3-cdn-cf.behance.net/project_modules/disp/b7352c25323518.5604bfa6118f4.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300,
          fit: BoxFit.cover,
        ),
        Container(
          child: Text('Image description'),
          padding: EdgeInsets.all(10.0),
        )
      ]),
    );
  }
}
