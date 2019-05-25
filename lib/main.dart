import 'package:flutter/material.dart';
import 'package:flutter_components/src/alert_page.dart';
import 'package:flutter_components/src/avatar_page.dart';
import 'package:flutter_components/src/home_page.dart';
// import 'package:flutter_components/src/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
      },
      
    );
  }
}