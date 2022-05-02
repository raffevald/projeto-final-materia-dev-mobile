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
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usuarios"),
      ),
    );
  }
}
