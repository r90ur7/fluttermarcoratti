import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/RequestJson/ApiHumanos.dart';
import 'package:fluttermarcoratti/Widgets/RequestJson/user.dart';

class Http_Json_ListView extends StatefulWidget {
  const Http_Json_ListView({super.key});

  @override
  State<Http_Json_ListView> createState() => _Http_Json_ListViewState();
}

class _Http_Json_ListViewState extends State<Http_Json_ListView> {
  var users = new List<User>.empty(growable: true);

  _getUsers() {
    setState(() {
      UserService.getUsers().then((response) {
        Iterable lista = json.decode(response.body);
        users = lista.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  _Http_Json_ListViewState() {
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return ListarHumanos();
  }

  ListarHumanos() {

    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              users[index].name ?? 'Usário não encontrado',
              style: const TextStyle(fontSize: 20,color: Colors.black),
            ),
            subtitle: Text(users[index].email ?? "Email não encontrado"),
          );
        });
  }
}
