import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/Column/Row/widgetRowColumn.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aula 3',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: widgetBasicos());
  }
}

class widgetBasicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Widgets Básicos")),
        body: Container(
          color: Colors.deepPurple,
          child: widgetImage(),
        ));
  }
  
  widgetImage() {
    return Image.asset(
      "assets/images/1.jpg",
      fit: BoxFit.cover,
      height: 300,
    );
  }
  
}
