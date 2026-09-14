import 'package:flutter/material.dart';
import 'package:parte2_flutter/models/Obra.dart';


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
          Center(
          child: Text(obra.titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),)),

          SizedBox(height: 16),

          Text(obra.artista),

          Text("Ano de criação: ${obra.anoCriacao}"),

          SizedBox(height: 16),

          Text("Data de cadastro: ${obra.dtCadastro}")


        ],
      ),)
      ,

    );
  }
}