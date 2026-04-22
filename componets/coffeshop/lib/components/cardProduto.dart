import 'package:flutter/material.dart';

class Cardproduto extends StatelessWidget {
  String imagem;
  String nome;
  double valor;
  Cardproduto({super.key,required this.imagem, required this.nome, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 190, 147, 240),
      child: ListTile(
        leading: Image.network(imagem, width: 70,),
        title: Text(nome),
        subtitle: Text(valor.toStringAsFixed(2)),
      ),

    );
  }
}