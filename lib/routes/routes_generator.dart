import 'package:flutter/material.dart';
import 'package:projeto_final_materia_dev_mobile/views/dashboard.dart';
import 'package:projeto_final_materia_dev_mobile/views/login_page.dart';

import '../views/cadastrar_usuarios.dart';
import '../views/login_page_test.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => LoginPageTest(
                  data: args,
                  title: 'Login',
                ));
      case '/dashboard':
        return MaterialPageRoute(
            builder: (_) => Dashboard(
                  data: args,
                  title: 'Dashboard',
                ));
      case '/cadastroUsuarios':
        return MaterialPageRoute(
            builder: (_) => CadastroDeUsuarios(
                  data: args,
                  title: 'Cadastro de Usuario',
                ));
      default:
        return _erroRoute();
    }
  }
}

_erroRoute() => Container();
