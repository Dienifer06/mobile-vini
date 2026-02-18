import 'package:flutter/material.dart';

void main() {
  runApp(TelaInicial());
}


class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text("App1")),
        body:Column(
          spacing:20,
          mainAxisAlignment:MainAxisAlignment.center, //eixo principal
          crossAxisAlignment:CrossAxisAlignment.start,
          
          children:[
            Container(width:100,height:100,color:Colors.pink),
            Container(width: 100,height:100, color: Colors.purple),
            Container(width: 100,height: 100,color: Colors.cyanAccent),
            Row(spacing:20,
              children: [
                Container(width:100,height:100, color: Colors.tealAccent),
                Container(width:100,height:100,color:Colors.blueAccent),
                Container(width:100,height:100,color:Colors.black87)
              ],
            ),
            SizedBox(height: 50),
            Stack(
              alignment:AlignmentGeometry.center,
              children:[
                Container(width:250,height:200,color:Colors.black),
                Container(width:200,height:150,color:Colors.amberAccent),
                Container(width:150,height:100, color:Colors.blueGrey),
              ],
            )
          ],
        ),
      ),
    );
  }
}



