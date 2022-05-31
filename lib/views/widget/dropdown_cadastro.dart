import 'package:flutter/material.dart';

class DropPage extends StatelessWidget{
  final dropValue = ValueNotifier('');
  final dropOpc = ['Usuário', 'Médico', 'Administrador'];

  DropPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: dropValue, builder: (BuildContext context, String value, _){
            return DropdownButton<String>(
              hint: const Text('Escolha uma opção'),
            )
          },)
      )
    );
  }
}