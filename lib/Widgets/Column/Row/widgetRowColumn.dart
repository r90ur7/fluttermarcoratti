import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/Button/widgetButton.dart';
widgetRowColumn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      widgetButton("Button 1"),
      widgetButton("Button 2"),
      widgetButton("Button 3"),
    ],
  );
}
