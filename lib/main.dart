import 'package:flutter/material.dart';
import 'package:parkerapp/regist.dart';

import 'package:map_view/map_view.dart';

void main() {
  MapView.setApiKey("AIzaSyCNCehbK1gEwZgGnJiz_l_-1qJJdxgYXFU");
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parker',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(37, 174, 157, 1.0),
      ),
      home: new RegisterPage(),
    );
  }
}
