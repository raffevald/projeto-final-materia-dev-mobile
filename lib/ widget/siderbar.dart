import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    const name = 'Dr. João Figuereido';
    const email = 'joaofg@gmail.com';
    const urlImage = '../assets/DSC_3965.JPG';

    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          const SizedBox(height: 80),
          Container(
            color: Colors.transparent,
            child: SizedBox(
              height: 650,
              child: Drawer(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 192, 202, 225),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      buildHeader(
                        urlImage: urlImage,
                        name: name,
                        email: email,
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.person),
                        title: const Text('Usuários'),
                        onTap: () => Navigator.of(context)
                            .pushNamed('/cadastroUsuarios'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.favorite),
                        title: const Text('Favoritos'),
                        onTap: () => null,
                      ),
                      ListTile(
                        leading: const Icon(Icons.description),
                        title: const Text('Consultas'),
                        onTap: () => null,
                      ),
                      // const Divider(),
                      const ListTile(),
                      const ListTile(),
                      ListTile(
                        title: const Center(
                          child: Text('Sair'),
                        ),
                        onTap: () => Navigator.of(context).pushNamed('/'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
  }) =>
      InkWell(
        // onTap: onClicked,

        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 27, backgroundImage: NetworkImage(urlImage)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 11, color: Colors.black),
                  )
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      );
}
