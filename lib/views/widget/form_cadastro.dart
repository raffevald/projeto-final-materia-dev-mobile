import 'package:flutter/material.dart';

class FormCadastro extends StatelessWidget {

   FormCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String username;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Nome',
          style: TextStyle(
          height: 5,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular (10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
        height: 39,
        child: TextFormField(
          keyboardType: TextInputType.text,
          //validação 
          validator: (value){
            if(value!.length < 3){
              return 'O Nome deve ter mais 3 caracteres';
            }
            else{
              return null;
            }
          },
          onChanged: (value) => setState(() => username = value),
        )     
        ),
      ]
    );
  }
  setState(String Function() param0) {}
}