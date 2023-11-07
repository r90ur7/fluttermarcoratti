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
      UserService.getUsers().then((response) {
        setState(() {
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
          return  ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('http://www.macoratti.net/Imagens/contato1.png'
              ),//users[index].avatar,
            ),
            title: Text(
              users[index].name ?? 'Usário não encontrado',
              style: const TextStyle(
              fontSize: 20,
              color: Colors.black),
            ),
            subtitle: Text(users[index].email ?? "Email não encontrado"),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesHumanos(
                    users[index],
                  ),
                ),
              );
            },
          );
        });
  }
}

class DetalhesHumanos extends StatelessWidget {
  final User user;

  DetalhesHumanos(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name ?? 'Nome padrão'),
      ),
      body: userDetails(),
    );
  }

  Padding userDetails() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [

          ListTile(
            title: Text(
              user.name ?? 'Nome padrão',
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
              )
            ),
            subtitle: Text(
              user.email ?? 'Email padrão',
                style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              )
            ),
            leading:Icon(Icons.email,color: Colors.amber,)
          ),
        ],
      ),
    );
  }
}
