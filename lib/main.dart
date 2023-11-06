import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/RequestJson/requestJson.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Acesso'),
        ),
        body: Http_Json_ListView(),
      ),
    );
  }
}