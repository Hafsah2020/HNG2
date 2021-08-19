import 'package:flutter/material.dart';
import 'package:zuristagetwo/Form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zuri task two',
      home: Home(),
      debugShowCheckedModeBanner: false,
     /* theme: ThemeData(
        primaryColor: Colors.white10,
      ),*/
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Forms(),
    );
  }
}