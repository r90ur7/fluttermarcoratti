import 'package:flutter/material.dart';
widgetImage() {
  return Center(
    child: Image.asset(
      "assets/images/1.png",
      fit: BoxFit.contain,
      height: 300,
    ),
  );
}
