import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const Map<String, String> EnpointsAPI = {
  'Turma': 'http://apigeral.ugb.edu.br/v1/Nead/AlunosPorTurma',
};

class API {
  static Future getTurma() async {
    var valorDaTurma = EnpointsAPI['Turma'];
    print(valorDaTurma);
    var url = Uri.parse("$valorDaTurma/21405");
    return await http.get(url);
  }
}
