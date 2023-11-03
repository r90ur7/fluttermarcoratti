import 'package:flutter/material.dart';

BuildListViewBasica() {
  return ListView(
    
    children: <Widget>[
      ListTile(
        title: const Text('Azul'),
        leading: const Icon(Icons.wb_sunny),
        subtitle: const Text('Cor preferida'),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          print('Azul');
        },
        onLongPress: () {
        },
      ),
      ListTile(
        title: const Text('Vermelho'),
        leading: const Icon(Icons.favorite),
        subtitle: const Text('Cor preferida'),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          print('Vermelho');
        },
        onLongPress: () {
        },
      ),
    ],
  );
}