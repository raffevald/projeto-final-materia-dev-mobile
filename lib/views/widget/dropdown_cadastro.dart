import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key, required this.title, Object? data})
      : super(key: key);

  final String title;

  @override
  State<Cadastro> createState() => MyCadastro();
}

class MyCadastro extends State<Cadastro> {
  final dropValue = ValueNotifier('');
  final dropOpc = ['Usuário', 'Médico', 'Administrador'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Cadastro",
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: .5,
            )),
          ),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                Color.fromRGBO(0, 31, 84, 1),
                Color.fromRGBO(19, 86, 202, 1),
              ]))),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
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
                  const SizedBox(height: 18),
                  Text('Olá, \n bem-vindo(a)!',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(0, 31, 84, 1),
                              letterSpacing: .5,
                              fontWeight: FontWeight.w900,
                              fontSize: 30)),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    //colocar espaçamento entre os campos
                    height: 29,
                  ),
                  Text(
                      'Para se cadastrar é necessário, primeiro, selecionar o tipo de cadastro:',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18))),
                  const SizedBox(
                    //colocar espaçamento entre os campos
                    height: 8,
                  ),
                  ValueListenableBuilder(
                      valueListenable: dropValue,
                      builder: (BuildContext context, String value, _) {
                        return SizedBox(
                          width: 280,
                          child: DropdownButtonFormField<String>(
                            isExpanded: true,
                            hint: const Text('Selecione uma opção'),
                            dropdownColor:
                                const Color.fromRGBO(211, 233, 254, 1),
                              autofocus: false,
                            style: const TextStyle(
                                color: Color.fromRGBO(0, 31, 84, 1),
                                fontSize: 18),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(211, 233, 254, 1),),
                            value: (value.isEmpty) ? null : value,
                            items: _dropDownItem(),
                            onChanged: (value) {
                              switch (value) {
                                case "Usuário":
                                  Navigator.of(context)
                                      .pushNamed('/cadastroUsuarios');
                                  break;
                                case "Médico":
                                  Navigator.of(context)
                                      .pushNamed('/cadastroMedicos');
                                  break;
                                /*case "Administrador" :
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => third()),
                    );
                    break;*/
                              }
                            },
                          ),
                        );
                      }),
                  const SizedBox(
                    //colocar espaçamento entre os campos
                    height: 15,
                  ),
                  Positioned(
                    child: SvgPicture.asset(
                      'assets/images/Image_Cadastro_Inferior.svg',
                      height: size.height * 0.35,
                    ),
                  ),
                ])));

    //child: ValueListenableBuilder(
    //valueListenable: dropValue,
    //builder: (BuildContext context, String value, _) {
    //return SizedBox(
    /*width: 280,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                icon: const Icon(Icons.people),
                hint: const Text('Escolha uma opção'),
                dropdownColor: Color.fromRGBO(232, 244, 255, 1),
                style: TextStyle(color: Color.fromRGBO(0, 31, 84, 1)),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(232, 244, 255, 1),
                ), 
                value: (value.isEmpty) ? null : value,
                items: _dropDownItem(),
                onChanged: (value) {
                  switch (value) {
                    case "Usuário":
                      Navigator.of(context).pushNamed('/cadastroUsuarios');
                      break;
                    case "Médico":
                      Navigator.of(context).pushNamed('/cadastroMedicos');
                      break;
                    /*case "Administrador" :
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => third()),
                    );
                    break;*/
                  }
                }, 
                /*value: (value.isEmpty) ? null : value,
            onChanged: (escolha) => dropValue.value = escolha.toString(),
            items: dropOpc
                .map(
                  (opcao) => DropdownMenuItem(
                    value: opcao,
                    child: Text(opcao),
                  ),
                )
                .toList(),*/
              ),
            ); 
          },
        )
        )
        );*/
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> users = ["Usuário", "Médico", "Administrador"];
    return users
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}
