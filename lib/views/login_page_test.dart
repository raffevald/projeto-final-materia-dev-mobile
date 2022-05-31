import 'dart:js';

import 'package:flutter/material.dart';

class LoginPageTest extends StatefulWidget {
  const LoginPageTest({Key? key, required this.title, Object? data})
      : super(key: key);

  final String title;

  @override
  State<LoginPageTest> createState() => MyLoginPageTest();
}
  String email = "";
  String senha = "";

Widget _Email() {

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  <Widget>[
      const Text(
        'E-mail',
        //textAlign: TextAlign.left,
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
      child: TextField(
        onChanged: (text) =>
            email = text, //retorna o texto  que ta escrito
            keyboardType: TextInputType.emailAddress,

            //alterando cor do texto inserido nos campos
            cursorColor: Colors.black,
            style: const TextStyle(
            color: Colors.black,
      ),
      decoration: const InputDecoration(
      //mudar a cor do campo, e alterar as bordas
          filled: true,
          fillColor: Colors.white,
          hintText: 'E-mail',
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide.none,)
      ),
      )),      
    ],
  );
}

Widget _Senha(){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  <Widget>[
      const Text(
        'Senha',
        //textAlign: TextAlign.left,
        style: TextStyle(
          height: 3,
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
      child: TextField(
          onChanged: (text) =>
            senha = text, //retorna o texto  que ta escrito
          obscureText: true, //não mostrar a senha
            //alterando cor do texto inserido nos campos
            cursorColor: Colors.black,
            style: const TextStyle(
            color: Colors.black,
      ),
      decoration: const InputDecoration(
      //mudar a cor do campo, e alterar as bordas
          filled: true,
          fillColor: Colors.white,
          hintText: 'Digite sua senha',
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide.none,)
      ),
      )),      
    ],
  );
}

class MyLoginPageTest extends State<LoginPageTest> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 31, 84, 1),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -42,
              left: 400,
              child: Image.asset(
                'assets/images/1_login_sup_direito.png',
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              top: -40,
              left: 418,
              child: Image.asset(
                'assets/images/login_inf-direita.png',
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: -25,
              right: 381,
              child: Image.asset(
                'assets/images/login_inf-esq.png',
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: -90,
              right: 420,
              child: Image.asset(
                'assets/images/login_sup-esq.png',
                width: size.width * 0.35,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    const Text(
                      'Entrar',
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        //height: 5,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        //fontFamily: 'RobotoMono'
                      ),
                    ),
                    const SizedBox(
                      //colocar espaçamento entre os campos
                      height: 39,
                    ),
                    _Email(),
                    _Senha(),
                    /*const Text(
                      'E-mail',
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 5,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    TextField(
                      onChanged: (text) =>
                          email = text, //retorna o texto  que ta escrito
                      keyboardType: TextInputType.emailAddress,

                      //alterando cor do texto inserido nos campos
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        //mudar a cor do campo, e alterar as bordas
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide.none,
                          //shadowColor: Colors.grey,
                          //borderRadius: BorderRadius.circular (50),
                        ),
                      ),
                    ),
                    const SizedBox(
                      //colocar espaçamento entre os campos
                      height: 20,
                    ),
                    const Text(
                      'Senha',
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    TextField(
                      onChanged: (text) =>
                          senha = text, //retorna o texto  que ta escrito
                      obscureText: true, //não mostrar a senha

                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        //mudar a cor do campo, e alterar as bordas
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide.none
                            //shadowColor: Colors.grey,
                            //borderRadius: BorderRadius.circular (50)
                            ),
                      ),
                    ),*/
                    const SizedBox(
                      //colocar espaçamento entre os campos
                      height: 25,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (email == 'raff' && senha == '123') {
                            print('Login Correto');
                            //Navigator.of(context).push( aqui aparece uma seta para voltar a tela de login no comando abaixo não
                            Navigator.of(context).pushNamed(
                                '/dashboard'); //esse '/home' é uma rota que vem do app_widget, se o login estiver correto, vai para outra tela
                          } else {
                            print('Login Incorreto');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 10,
                          padding: EdgeInsets.all(17),
                          shadowColor: Color.fromARGB(255, 250, 251, 250),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10.0)), // Elevation
                        ),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),

                    const SizedBox(
                      //colocar espaçamento entre os campos
                      height: 22,
                    ),
                    const Text(
                      'Ou',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const SizedBox(
                      //colocar espaçamento entre os campos
                      height: 22,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                                '/cadastroUsuarios');
                        },
                        child: const Text('Cadastre-se',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
