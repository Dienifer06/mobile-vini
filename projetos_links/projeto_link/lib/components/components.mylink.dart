import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class Mylinks extends StatelessWidget {
  String imagem;
  String link;
  Mylinks({super.key, required this.imagem, required this.link});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        //server para traduz a url para flutter 
        // Uri urlConvertido = Uri.parse(imagem);
        Uri linkConvertido= Uri.parse(link);
        if(await canLaunchUrl(linkConvertido)){
          await launchUrl(linkConvertido);
        }
      },
      child: Image.network(imagem, width: 50),
    );
    
  }
}