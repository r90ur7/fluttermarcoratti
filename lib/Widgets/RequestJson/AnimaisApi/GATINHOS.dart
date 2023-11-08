// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
  
ListarGatinhos() {
  final itens = List<String>.generate(1000, (i) => "Item $i");

    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(itens[index]),
          leading: const Icon(Icons.pets),
        );
      });
  }