import 'package:flutter/material.dart';

class WidgetCorPreferda extends StatefulWidget {
  @override
  _WidgetCorPreferdaState createState() => _WidgetCorPreferdaState();
}

class _WidgetCorPreferdaState extends State<WidgetCorPreferda> {
  String nomeCor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefullWidget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String texto) {
                setState(() {
                  nomeCor = texto;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "A sua cor preferida é : $nomeCor",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
