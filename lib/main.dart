import 'package:flutter/material.dart';
import 'package:http_app/ui/HomeScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Http Exemplo',
      home: HomeScreen(),
    );
  }
}