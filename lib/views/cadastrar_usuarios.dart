//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import '../ widget/siderbar.dart';

class CadastroDeUsuarios extends StatefulWidget {
  const CadastroDeUsuarios({Key? key, required this.title, Object? data})
      : super(key: key);

  final String title;

  @override
  State<CadastroDeUsuarios> createState() => MyCadastroDeUsuarios();
}

class MyCadastroDeUsuarios extends State<CadastroDeUsuarios> {
  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cadastro",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize:20)),
        backgroundColor: Color.fromRGBO(0, 31, 84, 1),
      ), 
      body: Center(
      ),     
      );
  }
}
