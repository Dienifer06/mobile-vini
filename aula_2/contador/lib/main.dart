import 'package:flutter/material.dart';

void main() {
  runApp(TelaContador());
}

class TelaContador extends StatefulWidget {
  const TelaContador({super.key});

  @override
  State<TelaContador> createState() => _TelaContadorState();
}

class _TelaContadorState extends State<TelaContador> {
  // aqui voc~e faz a sua logica 
  int valor = 0;
  //função para adivionar uma unidade 
  void adicionar(){
    setState(() { /// função apar altera os estdao de uma variavel 
      valor++; // aumenta valor em 1
      
    });

  }
  void retirar(){
    setState(() {
      valor--;
    });
  }

  void resetar(){
    setState(() {
      valor = 0;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("OLÁ, NESSA TELA CONTAMOS A SUA DOR!!!", style: TextStyle(color: Colors.yellowAccent),),// titulo da appbar
          backgroundColor: Colors.deepPurple, //cor de fundo
          centerTitle: true, //centralização do texto
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$valor",style: TextStyle(color:Colors.pink,fontSize: 40)), // valor da variavel 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: adicionar, child: Icon(Icons.add)),
                TextButton(onPressed: retirar, child: Icon(Icons.remove)),
                TextButton(onPressed: resetar, child: Icon(Icons.restore)),
              ],
            ),
            Image.network("https://upload.wikimedia.org/wikipedia/pt/thumb/1/14/Ata_meme.jpg/250px-Ata_meme.jpg", width: 150,)
          ]
        ),
      ),
    );
  }
}