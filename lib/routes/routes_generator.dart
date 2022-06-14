import 'package:flutter/material.dart';
import 'package:projeto_final_materia_dev_mobile/views/dashboard.dart';
import 'package:projeto_final_materia_dev_mobile/views/login_page.dart';

import '../views/cadastrar_medicos.dart';
import '../views/cadastrar_usuarios.dart';
import '../views/login_page_test.dart';
import '../views/widget/dropdown_cadastro.dart';

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
      case '/cadastro':
        return MaterialPageRoute(
            builder: (_) => Cadastro(
                  data: args,
                  title: 'Cadastro de Usuario',
                ));
      case '/cadastroUsuarios':
        return MaterialPageRoute(
            builder: (_) => CadastroDeUsuarios(
                  data: args,
                  title: 'Cadastro de Usuario',
                ));
      case '/cadastroMedicos':
        return MaterialPageRoute(
            builder: (_) => CadastroDeMedicos(
                  data: args,
                  title: 'Cadastro de Médicos',
                ));
      default:
        return _erroRoute();
    }
  }
}

_erroRoute() => Container();
