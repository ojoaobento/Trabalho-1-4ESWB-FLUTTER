import 'package:flutter/material.dart';
import 'package:parte2_flutter/models/obra.dart';


class PageDatalhada extends StatelessWidget {
  
  final Obra obra;
  
  const PageDatalhada({super.key, required this.obra});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFFAF7F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF7F2),        
        title: Text('Detalhes quanto a Obra "${obra.titulo}" ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 54, 33, 25)
        ),),
        centerTitle: true,
      ),

      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Center(),

          SizedBox(height: 16),

          Text(obra.artista, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),

          Text("Ano de criação: ${obra.anoCriacao}", style: 
          TextStyle(
            decoration: TextDecoration.underline,
            decorationThickness: 1.5,

          ),),

          SizedBox(height: 16),

          Text("Movimento Artístico: ${obra.movimentoArtistico}", style: TextStyle(
            fontWeight: FontWeight.bold
          ),),

          SizedBox(height: 16),

          Text("Data de cadastro: ${obra.dtCadastro}")


        ],
      ),)
      ,

    );
  }
}