import 'package:coffeshop/components/botao.dart';
import 'package:coffeshop/components/logo.dart';
import 'package:coffeshop/components/titulo.dart';
import 'package:coffeshop/pages/telaProdutos.dart';
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
            Titulo(valorDigitado: "Entre na melhor cafeteria"),
            SizedBox(height: 70), //define um espaça,mento entre eles
            Logo(),
            Botao(pagina: Telaprodutos())
            
          ],
        ),
      ),
    );
  }
}