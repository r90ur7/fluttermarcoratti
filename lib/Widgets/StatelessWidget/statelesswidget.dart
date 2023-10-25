// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
class widgetBasicos extends StatelessWidget {
  const widgetBasicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Widgets Básicos")),
        body: Container(
          color: Colors.deepPurple,
          child: const Placeholder(),
        ));
  }
}
