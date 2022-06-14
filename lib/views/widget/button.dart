import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final buttonStyle = ElevatedButton.styleFrom(
    primary: Color.fromRGBO(0,31, 84, 1),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)),
    textStyle: TextStyle(
      fontSize: 18, 
      fontWeight: FontWeight.w600),
    padding: const EdgeInsets.all(20),            
  );

  Button({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: onPressed,
        child: Text(text),
        /*style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          primary: Color.fromRGBO(0, 31, 84, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), // Elevation
        ),
        child: Text('Cadastrar',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            )),*/
      ),
    );
  }
}
