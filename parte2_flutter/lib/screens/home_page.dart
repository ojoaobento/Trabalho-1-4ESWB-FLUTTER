import 'package:flutter/material.dart';
import 'package:parte2_flutter/models/galeria.dart';
import 'package:parte2_flutter/models/obra.dart';
import 'package:parte2_flutter/models/obra_digital.dart';
import 'package:parte2_flutter/models/obra_card.dart';
import 'package:parte2_flutter/screens/page_datalhada.dart';
import 'package:parte2_flutter/screens/cadastro_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Galeria g1 = Galeria(nome: "Galeria de Obras Clássicas");


  @override
  void initState(){
    super.initState();

    g1.adicionar(Obra(titulo: "Noite Estrelada", artista: "Vincent van Gogh", anoCriacao: 1889, movimentoArtistico: "Pós-Impressionismo",));
    g1.adicionar(Obra(titulo: "A Última Ceia", artista: "Leonardo da Vinci", anoCriacao: 1498, movimentoArtistico: "Renascimento"));
    g1.adicionar(Obra(titulo: "O Grito", artista: "Edvard Munch", anoCriacao: 1893, movimentoArtistico: "Expressionismo"));
    g1.adicionar(Obra(titulo: "Guernica", artista: "Pablo Picasso", anoCriacao: 1937, movimentoArtistico: "Cubismo"));
    g1.adicionar(Obra(titulo: "Abaporu", artista: "Tarsila do Amaral", anoCriacao: 1928, movimentoArtistico: "Modernismo"));
    g1.adicionar(ObraDigital(anoCriacao: 1503, artista: "Leonardo da Vinci", titulo: "Mona Lisa Digital", formato: "PNG",
     tamanhoMb: 15.5, movimentoArtistico: "Renascimento"));
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFFAF7F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF7F2),
        title: Text("Galeria de Obras",
        style: TextStyle(color: const Color(0xFF8C6D31), fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.add),
          onPressed: () async {
            final novaObra = await Navigator.of(context).push<Obra>(
              MaterialPageRoute(builder: (context) => CadastroPage(),)
            );


            if(novaObra != null){
              setState(() {
                g1.adicionar(novaObra);
              });
            }
          },)
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Total de obras na ${g1.nome}: ${g1.totalObras}", 
            style: TextStyle(color: const Color(0xFF3C2F2F), fontWeight: FontWeight.bold, fontSize: 18)),
          ),

          Expanded(child: ListView.builder(itemCount: g1.obras.length,
            itemBuilder: (context, index){
            final obra = g1.obras[index];

            return InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PageDatalhada(
                      obra: obra,
                    ),
                  ),
                );
              },
              child: ObraCard(
                obra: obra,
              ),
            );
            }
            )
          )
        ]
      ),

    );
  }



}