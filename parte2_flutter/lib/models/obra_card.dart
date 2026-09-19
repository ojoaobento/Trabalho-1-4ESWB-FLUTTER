import 'package:flutter/material.dart';
import 'obra.dart';

class ObraCard extends StatelessWidget {
  final Obra obra;
  
  const ObraCard({super.key, required this.obra});

  @override
  Widget build(BuildContext context) {
    
    return (Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFFFFCF7),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFFD6C3A5),
        ),
        boxShadow: const[
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 6,
            
          )
        ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            obra.titulo,
            style: TextStyle(
              color: Color(0xFF3C2F2F),
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),


          SizedBox(height: 2),

          Text(
            obra.artista,
            style: TextStyle(
              color: Color.fromARGB(255, 70, 56, 42),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
            ),
          ),

          SizedBox(height: 2),

          Text(
            ("Ano de Criação: ${obra.anoCriacao}"),
            style: TextStyle(
              color: Color(0xFF7A6855),
              fontSize: 13,
              fontWeight: FontWeight.bold

            ),
          )
        ],
      ),      
    )
    );
  }
}