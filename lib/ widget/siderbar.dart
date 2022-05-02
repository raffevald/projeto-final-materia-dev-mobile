import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      child: Drawer(
        // borderRadius: BorderRadius.circular(16.0),
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
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
            ),
            const ListTile(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Usuários'),
              onTap: () => Navigator.of(context).pushNamed('/cadastroUsuarios'),
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
    );
  }
}
