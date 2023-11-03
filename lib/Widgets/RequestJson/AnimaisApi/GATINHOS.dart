import 'package:flutter/material.dart';
  
ListarGatinhos() {
  final url = Uri.parse('https://api.thecatapi.com/v1/breeds');
  final itens = List<String>.generate(1000, (i) => "Item $i");

    return ListView.builder(
      itemCount: itens.length,
      // scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(itens[index]),
          leading: Icon(Icons.pets),
        );
      });
  }