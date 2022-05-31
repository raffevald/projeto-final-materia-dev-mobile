import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    const name = 'Dr. João Figuereido';
    const email = 'joaofg@gmail.com';
    const urlImage = '../assets/DSC_3965.JPG';

    return SizedBox(
      height: 650,
      child: Drawer(
        // shape: BoxShape.circle(BoxBorder()),
        // borderRadius: BorderRadius.circular(16.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
          child: ListView(
            // Remove padding
            padding: EdgeInsets.zero,
            children: [
              /*  UserAccountsDrawerHeader(
            accountName: const Text('Dr. João Figuereido'),
            accountEmail: const Text('joaofg@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 22, 23, 23),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ), */

              buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
              ),
              const ListTile(),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Usuários'),
                onTap: () =>
                    Navigator.of(context).pushNamed('/cadastroUsuarios'),
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
              const Divider(),
              const ListTile(),
              const ListTile(),
              ListTile(
                title: const Center(
                  child: Text('Sair'),
                ),
                // leading: const Icon(Icons.exit_to_app),
                onTap: () => Navigator.of(context).pushNamed('/'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    // required VoidCallback onClicked,
  }) =>
      InkWell(
        // onTap: onClicked,

        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          // padding: Paddi,
          //padding: Padding.add(const EdgeInsets.symmetric(vertical: 40)),
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
              // const CircleAvatar(
              //  radius: 20,
              // backgroundColor: Color.fromARGB(30, 60, 168, 1),
              // child: Icon(
              //  Icons.logout,
              //  color: Colors.blue,
              // ),
              // )
            ],
          ),
        ),
      );
}
