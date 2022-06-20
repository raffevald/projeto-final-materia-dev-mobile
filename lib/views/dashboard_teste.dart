// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_final_materia_dev_mobile/views/cadastrar_medicos.dart';

import '../ widget/siderbar.dart';
import '../models/doctor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // final List<Map<String, dynamic>> _allUsers = [
  //   {"id": 1, "name": "Andy", "age": 29},
  //   {"id": 2, "name": "Aragon", "age": 40},
  //   {"id": 3, "name": "Bob", "age": 5},
  //   {"id": 4, "name": "Barbara", "age": 35},
  //   {"id": 5, "name": "Candy", "age": 21},
  //   {"id": 6, "name": "Colin", "age": 55},
  //   {"id": 7, "name": "Audra", "age": 30},
  //   {"id": 8, "name": "Banana", "age": 14},
  //   {"id": 9, "name": "Caversky", "age": 100},
  //   {"id": 10, "name": "Becky", "age": 32},
  // ];

  //Laitu
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  // String name = "";

  // final List<Map<String, dynamic>> _allUsers = Doctor({
  //   nome,
  //   email,
  //   senha,
  //   "cpf" : cpf,
  //   sexo,
  //   especialidade,
  //   crm,
  //   rqe,
  //   cro,
  //   endereco,
  //   numero,
  //   bairro,
  //   celular
  // });

  final List<Map<String, dynamic>> _allUsers = [
    {
      "cpf": "33344477733",
      "dateTIme": "Quinta 15 de agosto",
      "urlImage": "./algumdiretorio/imagem.png",
      "name": "Dr. Rafael Silva",
      "email": "raff.evald@gmail.com",
      "especialidade": "Cardiologista",
      "crmOrRqeOrRro": "72362",
      "rua": "Caucheiro",
      "numero": "1378",
      "cidade": "Ji-paraná",
      "bairro": "Nova Brasilia"
    },
    {
      "cpf": "33344477733",
      "dateTIme": "Quinta 15 de agosto",
      "urlImage": "./algumdiretorio/imagem.png",
      "name": "Dr. Weslayne",
      "email": "weslayne@gmail.com",
      "especialidade": "Clinica geral",
      "crmOrRqeOrRro": "234654",
      "rua": "Rio Branco",
      "numero": "1378",
      "cidade": "Mirante da Serra",
      "bairro": "Centro"
    },
    {
      "cpf": "33344477733",
      "dateTIme": "Sexta 15 de agosto",
      "urlImage": "./algumdiretorio/imagem.png",
      "name": "Dr. Eric Costa",
      "email": "eric.costa@gmail.com",
      "especialidade": "Clinico geral",
      "crmOrRqeOrRro": "234654",
      "rua": "Rio Branco",
      "numero": "1378",
      "cidade": "Nova União",
      "bairro": "Centro"
    },
    {
      "cpf": "33344477733",
      "dateTIme": "Sexta 15 de agosto",
      "urlImage": "./algumdiretorio/imagem.png",
      "name": "Dr. Aquison",
      "email": "aquison@gmail.com",
      "especialidade": "Ortopedia",
      "crmOrRqeOrRro": "234654",
      "rua": "Rio Branco",
      "numero": "1378",
      "cidade": "Ji-Paraná",
      "bairro": "Centro"
    },
    {
      "cpf": "32423654678678",
      "dateTIme": "Sexta 15 de agosto",
      "urlImage": "./algumdiretorio/imagem.png",
      "name": "Dr. Aquison",
      "email": "aquison@gmail.com",
      "especialidade": "Ortopedia",
      "crmOrRqeOrRro": "234654",
      "rua": "Rio Branco",
      "numero": "1378",
      "cidade": "Ji-Paraná",
      "bairro": "Centro"
    },
  ];

  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["especialidade"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "LocalizaMed",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: .5,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromRGBO(0, 31, 84, 1),
                Color.fromRGBO(19, 86, 202, 1),
              ],
            ),
          ),
        ),
      ),
      drawer: const SideBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                labelText: 'Buscar',
                suffixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color.fromRGBO(211, 233, 254, 1),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                hintText: ('ex: Clinico geral, Cardiologista...'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: const Color.fromARGB(255, 242, 246, 252),
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              buildContextSearch(
                                dateTime:
                                    _foundUsers[index]["dateTIme"].toString(),
                                urlImage:
                                    _foundUsers[index]["urlImage"].toString(),
                                bairro: _foundUsers[index]["bairro"].toString(),
                                cidade: _foundUsers[index]["cidade"].toString(),
                                crmOrRqeOrRro: _foundUsers[index]
                                        ["crmOrRqeOrRro"]
                                    .toString(),
                                name: _foundUsers[index]["name"].toString(),
                                numero: _foundUsers[index]["numero"].toString(),
                                rua: _foundUsers[index]["rua"].toString(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const Text(
                      'Nenhum resultado encontrado.',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContextSearch({
    required String dateTime,
    required String urlImage,
    required String name,
    required String crmOrRqeOrRro,
    required String rua,
    required String numero,
    required String cidade,
    required String bairro,
  }) =>
      InkWell(
        child: Container(
          // padding: padding.add(const EdgeInsets.symmetric(horizontal: 30)),
          padding: padding.add(const EdgeInsets.symmetric(horizontal: 30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dateTime,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  padding:
                      padding.add(const EdgeInsets.symmetric(vertical: 10)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(urlImage),
                      ),
                      const SizedBox(width: 100),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color.fromARGB(255, 8, 8, 8),
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            crmOrRqeOrRro,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color.fromARGB(255, 8, 8, 8),
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Text("Rua/Av. "),
                              Text(
                                rua,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              const Text(", Número "),
                              Text(
                                numero,
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 8, 8, 8),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text("Cidade "),
                              Text(
                                cidade,
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 8, 8, 8),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const Text(", Bairro "),
                              Text(
                                bairro,
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 8, 8, 8),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  // Widget buildContextSearch({
  //   required String dateTime,
  //   required String urlImage,
  //   required String name,
  //   required String crmOrRqeOrRro,
  //   required String rua,
  //   required String numero,
  //   required String cidade,
  //   required String bairro,
  // }) =>
  //     InkWell(
  //       child: Container(
  //         padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
  //         child: Row(
  //           children: [
  //             Text(
  //               dateTime,
  //               style: const TextStyle(fontSize: 15, color: Colors.black),
  //             ),
  //             SizedBox(
  //               child: Row(
  //                 children: [
  //                   CircleAvatar(
  //                       radius: 27, backgroundImage: NetworkImage(urlImage)),
  //                   const SizedBox(width: 20),
  //                   Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Text(
  //                         name,
  //                         style: const TextStyle(
  //                             fontSize: 15, color: Colors.black),
  //                       ),
  //                       const SizedBox(height: 4),
  //                       Text(
  //                         crmOrRqeOrRro,
  //                         style: const TextStyle(
  //                             fontSize: 11, color: Colors.black),
  //                       ),
  //                       Text(
  //                         rua,
  //                         style: const TextStyle(
  //                             fontSize: 11, color: Colors.black),
  //                       ),
  //                       Text(
  //                         numero,
  //                         style: const TextStyle(
  //                             fontSize: 11, color: Colors.black),
  //                       ),
  //                       Text(
  //                         cidade,
  //                         style: const TextStyle(
  //                             fontSize: 11, color: Colors.black),
  //                       ),
  //                       Text(
  //                         bairro,
  //                         style: const TextStyle(
  //                             fontSize: 11, color: Colors.black),
  //                       )
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             const Spacer(),
  //           ],
  //         ),
  //       ),
  //     );
}
