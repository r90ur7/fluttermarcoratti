import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/StatefullWidget/statefullWidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cor preferida',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: WidgetCorPreferda());
  }
}


