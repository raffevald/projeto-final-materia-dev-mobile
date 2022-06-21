import 'package:flutter/material.dart';
import 'package:projeto_final_materia_dev_mobile/routes/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      // initialRoute: '/dashboard',
      // initialRoute: '/searchMed',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
