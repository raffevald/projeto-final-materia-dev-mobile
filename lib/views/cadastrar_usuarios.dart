//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_final_materia_dev_mobile/models/user.dart';
import 'package:projeto_final_materia_dev_mobile/views/widget/button.dart';
// import 'package:projeto_final_materia_dev_mobile/views/widget/dropdown_cadastro.dart';
// import 'package:projeto_final_materia_dev_mobile/views/widget/form_cadastro.dart';

//import '../ widget/siderbar.dart';

class CadastroDeUsuarios extends StatefulWidget {
  const CadastroDeUsuarios({Key? key, required this.title, Object? data})
      : super(key: key);

  final String title;

  @override
  State<CadastroDeUsuarios> createState() => MyCadastroDeUsuarios();
}

class MyCadastroDeUsuarios extends State<CadastroDeUsuarios> {
  final dropValue = ValueNotifier('');
  final dropOpc = ['Feminino', 'Masculino'];
  final TextEditingController _controllerNome = new TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerCPF = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();
  final TextEditingController _controllerSexo = TextEditingController();
  final TextEditingController _controllerEndereco = TextEditingController();
  final TextEditingController _controllerNumero = TextEditingController();
  final TextEditingController _controllerBairro = TextEditingController();
  final TextEditingController _controllerCelular = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String username;
    Size size = MediaQuery.of(context).size;
    String email;
    String senha;
    bool _isObscure = true;

    return Scaffold(
      appBar: AppBar(
          //toolbarHeight: 80,
          centerTitle: true,
          title: Text(
            "Cadastro \nUsuários",
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              /*Espaçamento entre linhas*/
              letterSpacing: .5,
            )),
          ),
          /*Alterando a cor do AppBar para Gradiente*/
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                Color.fromRGBO(0, 31, 84, 1),
                Color.fromRGBO(19, 86, 202, 1),
              ])))),

      /*Formulário Cadastro*/
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*Informações iniciais*/
              Text('Preencha seus dados',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(0, 31, 84, 1),
                          fontWeight: FontWeight.w800,
                          fontSize: 20)),
                  textAlign: TextAlign.justify),
              Text(
                  'Precisamos de mais alguns dados \npara finalizar o seu cadastro.',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(91, 91, 91, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 17)),
                  textAlign: TextAlign.justify),
              const SizedBox(height: 29),

              /*Início do formulário*/
              Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Dados de acesso',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(3, 48, 124, 1),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18)),
                        ),
                        const SizedBox(height: 10),

                        /*TextField E-mail*/
                        Text(
                          'E-mail',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(0, 31, 84, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18)),
                        ),
                        TextFormField(
                          controller: _controllerEmail,
                          onChanged: (text) =>
                              email = text, //retorna o texto  que ta escrito
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          cursorColor: Colors.black,
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(211, 233, 254, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintText: ('ex: localiza@gmail.com*'),
                            prefixIcon: const Icon(Icons.email,
                                color: Color.fromRGBO(112, 145, 221, 1)),
                          ),
                        ),
                        const SizedBox(height: 10),

                        /*Senha*/
                        Text('Senha',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 31, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                        TextFormField(
                            controller: _controllerSenha,
                            onChanged: (text) => senha = text,
                            cursorColor: Colors.black,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromRGBO(211, 233, 254, 1),
                              hintText: ('Digite uma senha*'),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                              prefixIcon: const Icon(Icons.lock,
                                  color: Color.fromRGBO(112, 145, 221, 1)),
                              // suffixIcon: IconButton(
                              //     icon: Icon(
                              //       _isObscure =
                              //           ? Icons.visibility
                              //           : Icons.visibility_off,
                              //       color: const Color.fromRGBO(112, 145, 221, 1),
                              //     ),
                              //     onPressed: () {
                              //       setState(() {
                              //         _isObscure = !_isObscure;
                              //       });
                              //     },);
                            ),
                            /*Validação da senha*/
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Informe sua senha!';
                              } else if (value.length < 6) {
                                return 'Sua senha deve ter no mínimo 6 caracteres';
                              }
                              return null;
                            }),
                        const SizedBox(height: 20),
                        Text(
                          'Dados da conta',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(3, 48, 124, 1),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18)),
                        ),
                        const SizedBox(height: 10),
                        Text('Nome',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 31, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                        TextFormField(
                          controller: _controllerNome,
                          keyboardType: TextInputType.text,
                          autofocus: true,
                          cursorColor: Colors.black,
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person,
                                color: Color.fromRGBO(112, 145, 221, 1)),
                            filled: true,
                            fillColor: const Color.fromRGBO(211, 233, 254, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintText: ('Informe seu nome completo*'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('CPF',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 31, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                        TextFormField(
                          controller: _controllerCPF,
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          cursorColor: Colors.black,
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person,
                                color: Color.fromRGBO(112, 145, 221, 1)),
                            filled: true,
                            fillColor: const Color.fromRGBO(211, 233, 254, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintText: ('Informe seu CPF*'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Sexo',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 31, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                        ValueListenableBuilder(
                            valueListenable: dropValue,
                            builder: (BuildContext context, String value, _) {
                              return SizedBox(
                                child: DropdownButtonFormField<String>(
                                  isExpanded: true,
                                  dropdownColor:
                                      const Color.fromRGBO(232, 244, 255, 1),
                                  style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 31,84, 1)),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        const Color.fromRGBO(211, 233, 254, 1),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    hintText: ('Selecione'),
                                  ),
                                  value: (value.isEmpty) ? null : value,
                                  items: _dropDownItem(),
                                  onChanged: (value) {
                                    switch (value) {
                                    }
                                  },
                                ),
                              );
                            }),
                        const SizedBox(height: 10),
                        Text('Endereço',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 31, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                        TextFormField(
                          controller: _controllerEndereco,
                          keyboardType: TextInputType.text,
                          autofocus: true,
                          cursorColor: Colors.black,
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.place_rounded,
                                color: Color.fromRGBO(112, 145, 221, 1)),
                            filled: true,
                            fillColor: const Color.fromRGBO(211, 233, 254, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintText: ('Digite o seu endereço*'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Número',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 31, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                        TextFormField(
                          controller: _controllerNumero,
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          cursorColor: Colors.black,
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.place_rounded,
                                color: Color.fromRGBO(112, 145, 221, 1)),
                            filled: true,
                            fillColor: const Color.fromRGBO(211, 233, 254, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintText: ('Digite o número da residência*'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Bairro',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 31, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                        TextFormField(
                          controller: _controllerBairro,
                          keyboardType: TextInputType.text,
                          autofocus: true,
                          cursorColor: Colors.black,
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.place_rounded,
                                color: Color.fromRGBO(112, 145, 221, 1)),
                            filled: true,
                            fillColor: const Color.fromRGBO(211, 233, 254, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintText: ('Informe o bairro*'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Celular',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 31, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                        TextFormField(
                          controller: _controllerCelular,
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          cursorColor: Colors.black,
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone,
                                color: Color.fromRGBO(112, 145, 221, 1)),
                            filled: true,
                            fillColor: const Color.fromRGBO(211, 233, 254, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintText: ('Digite seu melhor número*'),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Button(
                          onPressed: () {
                            final String nome = _controllerNome.text;
                            final String emaiL = _controllerEmail.text;
                            final String senha = _controllerSenha.text;
                            final double? cpf =
                                double.tryParse(_controllerCPF.text);
                            final String sexo = _controllerSexo.text;
                            final String endereco = _controllerEndereco.text;
                            final int? numero =
                                int.tryParse(_controllerNumero.text);
                            final String bairro = _controllerBairro.text;
                            final int? celular =
                                int.tryParse(_controllerCelular.text);

                            final User usuarioNovo = User(nome, emaiL, senha,
                                cpf, sexo, endereco, numero, bairro, celular);
                            print(usuarioNovo);
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      content: Text(
                                        'Cadastro realizado com sucesso! \nRealize seu login.',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(0, 31, 84, 1)),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      actions: [
                                        FlatButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed('/');
                                          },
                                          child: Text(
                                            'Ok',
                                            style: GoogleFonts.inter(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 50, 110, 213)),
                                          ),
                                        ),
                                      ],
                                    ));
                          },
                          text: 'Cadastrar',
                        )
                      ])),
            ]),
      ),
    );
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> users = ["Feminino", "Masculino"];
    return users
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}
