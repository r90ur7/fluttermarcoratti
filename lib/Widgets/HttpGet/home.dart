import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpWebget extends StatefulWidget {
  const HttpWebget({super.key});

  @override
  State<HttpWebget> createState() => _HttpWebgetState();
}

class _HttpWebgetState extends State<HttpWebget> {
  late List data;
  Future<String> getJsonData() async {
    var url = Uri.https('unsplash.com', '/napi/photos/Q14J2k8VE3U/related');
    var response = await http.get(url);

    data = json.decode(response.body)['results'];
    print(data);

    return "Dados Objtidos com sucesso";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http - Json'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Http - Json'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getJsonData();
  }
}
