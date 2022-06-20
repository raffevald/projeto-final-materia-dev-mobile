import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageTest extends StatefulWidget {
  const LoginPageTest({Key? key, required this.title, Object? data})
      : super(key: key);

  final String title;

  @override
  State<LoginPageTest> createState() => MyLoginPageTest();
}

String email = "";
String senha = "";

final _formKey = GlobalKey<FormState>();

Widget _Email() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'E-mail',
        //textAlign: TextAlign.left,
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontWeight: FontWeight.w400,
          fontSize: 18,
          height: 2,
        )),
      ),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),          
          child: TextFormField(
            //key: _formKey,
            validator: (value){
              if(value!.length < 5){
                return "Esse e-mail é muito curto"; 
              }else if(value.contains("@")){
                return "E-mail incompleto";
              }
              return null;
            },
            onChanged: (text) => email = text, //retorna o texto  que ta escrito
            keyboardType: TextInputType.emailAddress,
            //alterando cor do texto inserido nos campos
            cursorColor: Colors.black,
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w400),
            decoration: const InputDecoration(
                //mudar a cor do campo, e alterar as bordas
                filled: true,
                fillColor: Colors.white,
                hintText: 'ex: localiza@gmail.com*',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide.none,
                )),
          )),
    ],
  );
}

/*Campo de Senha*/
Widget _Senha() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Senha',
        //textAlign: TextAlign.left,
        style: GoogleFonts.inter(
            textStyle: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w400,
                fontSize: 18,
                height: 2)),
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        //height: 39,
        child: TextFormField(
            //key: _formKey,          
            onChanged: (text) => senha = text, //retorna o texto  que ta escrito
            obscureText: true, //não mostrar a senha
            //alterando cor do texto inserido nos campos
            cursorColor: Colors.black,
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w400),
            decoration: const InputDecoration(
                //mudar a cor do campo, e alterar as bordas
                filled: true,
                fillColor: Colors.white,
                hintText: 'Digite sua senha*',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide.none,
                )),
            /*Validação da senha*/
            validator: (value) {
              if (value!.length < 6) {
                return 'Sua senha deve ter no máximo 6 caracteres';
              } 
              return null;
            }),
      ),
    ],
  );
}

class MyLoginPageTest extends State<LoginPageTest> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child:  Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(0, 31, 84, 1),
              Color.fromRGBO(19, 86, 202, 1),
            ])),
        width: double.infinity,
        padding: EdgeInsets.all(9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Positioned(
                  child: SvgPicture.asset(
                      'assets/images/Image_Cadastro.svg',
                      height: size.height * 0.10,
                  ),
                ),
                Container(
                    key: _formKey,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Entrar',
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                            //height: 5,
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            //fontFamily: 'RobotoMono'
                          )),
                        ),
                        const SizedBox(
                          //colocar espaçamento entre os campos
                          height: 39,
                        ),
                        _Email(),
                        _Senha(),
                        const SizedBox(
                          //colocar espaçamento entre os campos
                          height: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {
                                _Login();
                                if (email == 'raff@gmail.com' && senha == '123456'
                                || email == 'weslayne@gmail.com' && senha == '123456') {
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
                                padding: const EdgeInsets.all(20),
                                shadowColor:
                                    const Color.fromARGB(255, 250, 251, 250),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(15.0)), // Elevation
                              ),
                              child: const Text(
                                'Entrar',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                        ),
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
                        const SizedBox(height: 22,),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/cadastro');
                            },
                            child: Text(
                              'Cadastre-se',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )),
                            )),
                      ],
                    )),
              ],
            ),
          //],
        ),
      ),
      ); 
  }
  void _Login() async {
    if(_formKey.currentState!.validate()){ //
      print("Válido");
    }else{
      print("Inválido");
    }
  }
}
