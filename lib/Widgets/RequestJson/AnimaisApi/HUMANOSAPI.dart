import 'package:flutter/material.dart';

ListarHumanos() {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  final itens = List<String>.generate(1000, (i) => "Item $i");

  return ListView.builder(
      itemCount: itens.length,
      // scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(itens[index]),
        );
      });
}