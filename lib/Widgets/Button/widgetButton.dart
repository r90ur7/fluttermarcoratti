import 'package:flutter/material.dart';

widgetButton(String s) {
  return Center(
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
        elevation: MaterialStateProperty.all<double?>(30.0),
      ),
      child: Text("OK"),
      onPressed: () {
        print("pressionado");
      },
    ),
  );
}
