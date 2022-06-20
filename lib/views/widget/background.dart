/*import 'package:flutter/material.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({Key? key,})
      : super(key: key);

  @override
  Widget background() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'Entrar',
            style: TextStyle(
              //height: 5,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 31, 84, 1),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -42,
              left: 400,
              child: Image.asset(
                'assets/images/1_login_sup_direito.png',
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              top: -40,
              left: 418,
              child: Image.asset(
                'assets/images/login_inf-direita.png',
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: -25,
              right: 381,
              child: Image.asset(
                'assets/images/login_inf-esq.png',
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: -90,
              right: 420,
              child: Image.asset(
                'assets/images/login_sup-esq.png',
                width: size.width * 0.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
