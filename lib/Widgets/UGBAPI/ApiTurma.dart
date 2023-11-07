import 'package:flutter/material.dart';

class AlunosApi {
  String? nome;
  String? matricula;
  String? turma;
  int? idTurma;
  String? unidade;
  int? periodo;
  Curso? curso;

  AlunosApi(
      {this.nome,
      this.matricula,
      this.turma,
      this.idTurma,
      this.unidade,
      this.periodo,
      this.curso});

  AlunosApi.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    matricula = json['matricula'];
    turma = json['turma'];
    idTurma = json['idTurma'];
    unidade = json['unidade'];
    periodo = json['periodo'];
    curso = json['curso'] != null ? new Curso.fromJson(json['curso']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['matricula'] = this.matricula;
    data['turma'] = this.turma;
    data['idTurma'] = this.idTurma;
    data['unidade'] = this.unidade;
    data['periodo'] = this.periodo;
    if (this.curso != null) {
      data['curso'] = this.curso!.toJson();
    }
    return data;
  }
} //fim AlunosAPi


class Curso {
  int? idCurso;
  String? nome;

  Curso({this.idCurso, this.nome});
  Curso.fromJson(Map<String, dynamic> json) {
    idCurso = json['idCurso'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCurso'] = this.idCurso;
    data['nome'] = this.nome;
    return data;
  }
}// Fim CursosApi
