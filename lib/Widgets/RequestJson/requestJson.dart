import 'package:flutter/material.dart';
import 'package:fluttermarcoratti/Widgets/RequestJson/AnimaisApi/HUMANOSAPI.dart';

class Http_Json_ListView extends StatefulWidget {
  const Http_Json_ListView({super.key});

  @override
  State<Http_Json_ListView> createState() => _Http_Json_ListViewState();
}

class _Http_Json_ListViewState extends State<Http_Json_ListView> {
  @override
  Widget build(BuildContext context) {
    return ListarHumanos();
  }
}
