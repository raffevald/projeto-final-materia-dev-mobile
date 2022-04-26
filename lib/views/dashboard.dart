//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ widget/siderbar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title, Object? data})
      : super(key: key);

  final String title;

  @override
  State<Dashboard> createState() => Mydashboard();
}

class Mydashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const SideBar(),
    );
  }
}
