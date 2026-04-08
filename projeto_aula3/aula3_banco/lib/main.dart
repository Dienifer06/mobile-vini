import 'package:aula3_banco/pages/telainicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Intermediaria());
}

class Intermediaria extends StatelessWidget {
  const Intermediaria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //tirar debug
      home:  Telainicial(),
    );
  }
}