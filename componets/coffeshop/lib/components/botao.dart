import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  Widget pagina;
  Botao({super.key,required this.pagina});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
         backgroundColor: Colors.deepPurple, //cor de fundo
         foregroundColor: Colors.white70, //COR DE TEXTO/ICONE
         fixedSize: Size(100, 50), // tamanho do botão. primeiro valor é da lagura e outra da altura 
         shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), //deixa a borda retangular e com borda

      ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>pagina)); //navegar ate outra pagina
      }, 
      child: Text("Navegar"));
  }
}