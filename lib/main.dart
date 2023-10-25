import 'package:flutter/material.dart';

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
        home: const widgetBasicos());
  }
}

class widgetBasicos extends StatelessWidget {
  const widgetBasicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Widgets Básicos")),
        body: Container(
          color: Colors.deepPurple,
          child: widgetLogin(),
        ));
  }
  
  widgetLogin() {}

  
}
