import 'package:coffeshop/components/logo.dart';
import 'package:coffeshop/components/titulo.dart';
import 'package:flutter/material.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("bem-vindo")),
      body: Center(
        child: Column(
          children: [
            Titulo(valorDigitado: "coffe Shop"),
            Titulo(valorDigitado: "entre na mlehor cafeteria"),
            Logo()
            
          ],
        ),
      ),
    );
  }
}