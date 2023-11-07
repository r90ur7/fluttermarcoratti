import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/UGBAPI/ApiTurma.dart';
import 'package:fluttermarcoratti/Widgets/UGBAPI/service.dart';

class TurmasApi extends StatefulWidget {
  const TurmasApi({super.key});

  @override
  State<TurmasApi> createState() => _TurmasApiState();
}

class _TurmasApiState extends State<TurmasApi> {
  var turmas = new List<AlunosApi>.empty(growable: true);

  _getUsers() {
    API.getTurma().then((value) {
      if (value.body.isNotEmpty) {
        setState(() {
          Iterable turmalista = json.decode(value.body);
          turmas =
              turmalista.map((model) => AlunosApi.fromJson(model)).toList();
        });
      }
    });
  }

  _TurmasApiState() {
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return ListarTurma();
  }

  ListarTurma() {
    return ListView.builder(
        itemCount: turmas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(turmas[index].nome ?? 'Aluno não encontrado',
                style: TextStyle(fontSize: 20.0, color: Colors.black)),
            subtitle: Text(turmas[index].curso?.nome ?? ""),
            leading: Icon(Icons.people),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              var aluno = turmas[index].nome;
              print("clicou no aluno(a) $aluno");
            },
          );
        });
  }
}
