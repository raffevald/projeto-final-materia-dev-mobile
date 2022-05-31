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
        backgroundColor: Color.fromRGBO(0, 31, 84, 1),
        body: SingleChildScrollView(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                        ),

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
                              elevation: 20,
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
                            )), //botão

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
                            onPressed: () {},
                            child: const Text('Cadastre-se',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                      ],
                    )))

            //const Text('Tela de login'),
            ));
  }


 
}
