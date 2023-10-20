import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

widgetScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter - 2023'),
        centerTitle: true,
      ),
      drawer: Container(color: Colors.orange),
      body: Container(
        color: Colors.pink,
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_a_photo),
          onPressed: () { if (kDebugMode) {
            print("Pressionado");
          } }
        ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lime,
        child: Container(
          height: 40.0,
          child: const Row(
            children: [
              Text("Meu bottomappBar"),
              Icon(Icons.home)
            ],
          ),
        ),
      ),
      persistentFooterButtons: const [
        IconButton(onPressed: null, icon: Icon(Icons.add_alarm))
      ],
    );
  }