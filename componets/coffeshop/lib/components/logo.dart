import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 90,
      backgroundColor: Colors.transparent,
      backgroundImage: NetworkImage("https://icones.pro/wp-content/uploads/2021/06/icone-de-cafe-violet.png"),
    );
  }
}