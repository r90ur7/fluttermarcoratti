import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpWebget extends StatefulWidget {
  const HttpWebget({super.key});

  @override
  State<HttpWebget> createState() => _HttpWebgetState();
}

class _HttpWebgetState extends State<HttpWebget> {
  List data = [];

  Future<String> getJsonData() async {
    var url = Uri.https('unsplash.com', '/napi/photos/Q14J2k8VE3U/related');
    var response = await http.get(url);
    setState(() {
      data = json.decode(response.body)['results'];
    });

    print(data);

    return "Dados Objtidos com sucesso";
  }

  @override
  void initState() {
    super.initState();
    getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http - Json'),
        centerTitle: true,
      ),
      body: _listView(),
    );
  }

  _listView() {
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (context, index) {
        return _exibirImagem(data[index]);
      },
    );
  }

  _exibirImagem(dynamic item) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: item["urls"]['small'],
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fadeOutDuration: Duration(seconds: 2),
              fadeInDuration: Duration(seconds: 2),
              ),
            _criaLinhaTexto(item)
          ],
        ),
      );

  _criaLinhaTexto(dynamic item) {
    return ListTile(
      title: Text("Autor: ${item["user"]["name"]}"),
      subtitle: Text("Descricao: ${item["description"] ?? 'Sem descrição'}"),
    );
  }

}
