import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/Scaffold/widget_scaffold.dart';
import 'package:fluttermarcoratti/Widgets/Texts/widget_Text.dart';

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
          child: widgetButton(),
        ));
  }

  widgetButton() {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
          elevation: MaterialStateProperty.all<double?>(30.0),
        ),
        child: Text("Clique em mim"),
        onPressed: () {
          print("pressionado");
        },
      ),
    );
  }
}
