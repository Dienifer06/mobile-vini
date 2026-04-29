import 'package:flutter/material.dart';
import 'package:projeto_link/components/components.mylink.dart';
import 'package:projeto_link/pages/pages.interativa.dart';

class TelaLinks extends StatelessWidget {
  const TelaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Tela Links")),
      body: Center(
        child: Column(
          children: [
            Mylinks(imagem: "data:image/png;base64,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", link: "https://github.com/Dienifer06"),
            TextButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => 
                TelaInterativa())); 
           
            },
            child: Text("ir para tela "),

            ),
          ],
        ),
      ),
    );
  }
}

