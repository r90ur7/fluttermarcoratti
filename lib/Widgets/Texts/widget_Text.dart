import 'package:flutter/material.dart';

Center widgetText() {
    return Center(
        child: Text("widget Text",
        style: TextStyle( fontSize:40.0,
        color: Colors.orange,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        decorationStyle: TextDecorationStyle.dashed
          )
        ),
      );
}
