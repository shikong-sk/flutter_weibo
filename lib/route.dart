import 'package:flutter/material.dart';

import './Scaffold/MainScaffold.dart';
import './Scaffold/TabScaffold.dart';

import './Page/Home.dart';
import './Page/detailPage.dart';

final routes = {
  '/': (context) => Application(),
  '/main':(context) => TabScaffold(),
  '/home':(context) => HomePage(),
  '/detail': (context, {arguments}) =>
      DetailPage(arguments: arguments), //命名路由带参传值（需配合 onGenerateRoute 使用）
};

Function onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
  return null;
};
