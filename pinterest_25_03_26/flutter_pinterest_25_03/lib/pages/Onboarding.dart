import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        toolbarHeight: 120,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Padding(padding:EdgeInsetsGeometry.only(top: 70),
        child:Text("Pinterest",style: GoogleFonts.playfairDisplay(color: Colors.white)  ) 
        ), Image.asset('images/imagem_pin.jpg',width: 100,)
        ],), 
        backgroundColor: Colors.red[900],  
      ), 

      body: Center(
        child: Column(
          children: [
            SizedBox(height:150,),
            Text("BEM-VINDA(O)",style: GoogleFonts.playfairDisplay(color: Colors.red[900])),
            SizedBox(height:30,),
            Container(
              width: double.infinity,
              height: 200,
              child:Image.asset('images/alice_pin.jpg', fit: BoxFit.cover,)

            ),

            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red[900],
              foregroundColor: Colors.white70,
              fixedSize: Size(100,50),
              side: BorderSide(color: Colors.orange, width: 1),
              ),

              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>TelaHome()));
                
              },
              child: Text("Entrar"),

            )
          ]

        ),
      
      ),
    );
  }
}