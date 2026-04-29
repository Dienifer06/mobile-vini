import 'package:flutter/material.dart';

class TelaInterativa extends StatefulWidget {
  const TelaInterativa({super.key});

  @override
  State<TelaInterativa> createState() => _TelaInterativaState();
}

class _TelaInterativaState extends State<TelaInterativa> {
  //code aqui a sua logica 
  List projetos = [
    "projeto 1",
    "projeto 2" ,
    "projeto 3",
  ];

  int index = 0; //varaivel que ira observar a lista 
  void mudar(){
    setState(() {
      index++;
      if(index >= projetos.length){index = 0;}
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Tela interativa')),
      body: Center(
        child: Column(
          children: [
            Text(projetos[index]),
            TextButton(onPressed: mudar, child: Text("mudar")),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.blue ,
            )
          ],

        ),
      )
    );
  }
}