import 'package:flutter/material.dart';


BuildListViewDinamica() {
  final itens = List<String>.generate(1000, (i) => "Item $i");

  return ListView.builder(
      itemCount: itens.length,
      // scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(itens[index]),
            onTap: () {
              print('Clicou no item $index');
            },
          );
      });
}
// Container(
//   margin: const EdgeInsets.symmetric(horizontal:1.0),
//   color: Colors.lightGreen,
//   child: Text('$index'),
// ),
// ListTile(
//           title: Text(itens[index]),
//           onTap: () {
//             print('Clicou no item $index');
//           },
//         );
