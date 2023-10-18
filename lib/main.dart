import 'package:flutter/material.dart';

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
        home: home());
  }

  home() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter - 2023'),
        centerTitle: true,
      ),
      drawer: Container(color: Colors.orange),
      body: Container(
        color: Colors.white70,
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_a_photo),
          onPressed: () { print("Pressionado"); }
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
}
