import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/GasolOrAlcool/GasolOrAlcool.dart';
import 'package:fluttermarcoratti/Widgets/HttpGet/home.dart';
import 'package:fluttermarcoratti/Widgets/RequestJson/requestJson.dart';
import 'package:fluttermarcoratti/Widgets/UGBAPI/turmas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const TurmasApi(),
        );
  }
}
