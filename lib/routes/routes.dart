import 'package:flutter/material.dart';
import 'package:flutter_components/src/alert_page.dart';
import 'package:flutter_components/src/animated_container_page.dart';
import 'package:flutter_components/src/avatar_page.dart';
import 'package:flutter_components/src/card_page.dart';
import 'package:flutter_components/src/home_page.dart';
import 'package:flutter_components/src/input_page.dart';

final Map<String, WidgetBuilder> _routes = {
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'card': (BuildContext context) => CardPage(),
  'animated_container': (BuildContext context) => AnimatedContainerPage(),
  'inputs': (BuildContext context) => InputPage(),
};

Map<String, WidgetBuilder> getAppRoutes() {
  return _routes;
}
