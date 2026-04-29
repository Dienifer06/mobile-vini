import 'package:flutter/material.dart';
import 'package:projeto_link/pages/pages.links.dart';

void main() {
  runApp( MyApp());
}

// BASE DA NEVEGAÇÃO E CONFIGURAÇÕES GLOBAIS 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaLinks()
    );
    
  }
}


