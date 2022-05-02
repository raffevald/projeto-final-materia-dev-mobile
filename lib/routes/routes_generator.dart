import 'package:flutter/material.dart';
import 'package:projeto_final_materia_dev_mobile/views/dashboard.dart';
import 'package:projeto_final_materia_dev_mobile/views/login_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => LoginPage(
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
            builder: (_) => Dashboard(
                  data: args,
                  title: 'Cadastro de Usuario',
                ));
      default:
        return _erroRoute();
    }
  }
}

_erroRoute() => Container();
