import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title, Object? data})
      : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => MyLoginPage();
}

class MyLoginPage extends State<LoginPage> {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 31, 84,1),
      body: SingleChildScrollView(      
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Entrar',
                    style: TextStyle(
                      height: 5,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255,255,255,1),
                      //fontFamily: 'RobotoMono'
                    ),
                  ),
                  SizedBox(
                    //colocar espaçamento entre os campos
                    height: 1,
                  ),
                  Text(
                    'E-mail'
                  ),
                  TextField(
                    onChanged: (text) =>
                        email = text, //retorna o texto  que ta escrito
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    //colocar espaçamento entre os campos
                    height: 25,
                  ),
                  TextField(
                    onChanged: (text) =>
                        senha = text, //retorna o texto  que ta escrito
                    obscureText: true, //não mostrar a senha
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    //colocar espaçamento entre os campos
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (email == 'wes.kalline@gmail.com' &&
                            senha == '123') {
                          print('Login Correto');
                          //Navigator.of(context).push( aqui aparece uma seta para voltar a tela de login no comando abaixo não
                          Navigator.of(context).pushReplacementNamed(
                              '/home'); //esse '/home' é uma rota que vem do app_widget, se o login estiver correto, vai para outra tela
                        } else {
                          print('Login Incorreto');
                        }
                      },child: Text(
                        'Entrar',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )) //botão
              ],)
          )
        )
        
        //const Text('Tela de login'),
      )
    );
  }
}
