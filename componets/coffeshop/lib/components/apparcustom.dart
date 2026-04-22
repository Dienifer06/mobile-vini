import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class Apparcustom extends StatelessWidget implements PreferredSizeWidget {
  String nome;
  Apparcustom({super.key, required this.nome});


  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: Text(nome),
      backgroundColor: Colors.purpleAccent,
      toolbarHeight: 120, // tamanho da appbar
      iconTheme: IconThemeData(color: Colors.deepPurple), //icon de voltar
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}