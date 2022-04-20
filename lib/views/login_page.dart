import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title, Object? data})
      : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => MyLoginPage();
}

class MyLoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Tela de login'),
    );
  }
}
