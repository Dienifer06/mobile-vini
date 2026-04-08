
import 'package:aula3_banco/pages/telaHome.dart';
import 'package:flutter/material.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Bem-vindo(a) xuxuzinho(a)!", style: TextStyle(color: Colors.white),),
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center, totalmente no centro
          children: [
            SizedBox(height:150,),
            Image.asset("assets/Itaú_Logo.png",width:150),
            SizedBox(height: 50,),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white70,
              fixedSize: Size(100,50),
              side: BorderSide(color: Colors.orange, width: 1),
              ),

              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Telahome()));
                
              },
              child: Text("Entrar"),

            )
          ],
        ),
      )

    );
  }
}