import 'package:flutter/material.dart';

import './route.dart'; //外部引入路由

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去除右上角Debug图标
      initialRoute: '/', // 初始化加载的路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}
