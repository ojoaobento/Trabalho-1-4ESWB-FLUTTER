import 'package:flutter/material.dart';
import 'package:parte2_flutter/models/obra.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  
  final tituloController = TextEditingController();
  final artistaController = TextEditingController();
  final anoCriacaoController = TextEditingController();

  @override
  void dispose(){
    tituloController.dispose();
    artistaController.dispose();
    anoCriacaoController.dispose();

    super.dispose();
  }
  
  void confirmarCadastro(){
    final titulo = tituloController.text;
    final artista = artistaController.text;
    final anoCriacao = int.tryParse(anoCriacaoController.text);



    if (titulo.isEmpty || artista.isEmpty || anoCriacao == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Preencha os campos corretamente...."),
        ),
      );

      return;
    }

    final novaObra = Obra(
      titulo: titulo,
      artista: artista,
      anoCriacao: anoCriacao,
    );
    Navigator.of(context).pop(novaObra);
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFFAF7F2),
      appBar: AppBar(
      backgroundColor:  const Color(0xFFFAF7F2),
        title: Text("Cadastrar Obra",
        style: TextStyle(
          color: const Color(0xFF8C6D31),
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),),
        centerTitle: true,
      ),

      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: Column(
        children: [
          TextFormField(
            controller: tituloController,
            cursorColor: const Color(0xFF8C6D31),
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Color(0xFF3C2F2F),
              ),
              labelText: "Título da Obra",
              prefixIcon: Icon(Icons.title,
              color: Color(0xFF8C6D31)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF8C6D31),
                  width: 1.85
                ),
                borderRadius: BorderRadius.circular(12)
              )
            ),
          ),

          SizedBox(height:12),

          TextFormField(
            
            controller: artistaController,
            cursorColor: const Color(0xFF8C6D31),
            decoration: InputDecoration(
              labelText: "Artista",
              labelStyle: TextStyle(
                color: Color(0xFF3C2F2F)
              ),
              prefixIcon: Icon(Icons.person,
              color: Color(0xFF8C6D31)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:Color(0xFF8C6D31),
                  width: 1.85
                ),
                borderRadius: BorderRadius.circular(12)
              )
            ),
          ),

          SizedBox(height: 12),

          TextFormField(
            controller: anoCriacaoController,
            cursorColor: const Color(0xFF8C6D31),
            decoration: InputDecoration(
              labelText: "Ano de Criação",
              labelStyle: TextStyle(
                color: Color(0xFF3C2F2F)
              ),
              prefixIcon: Icon(Icons.calendar_today,
              color: Color(0xFF8C6D31)) ,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF8C6D31),
                  width: 1.85
                ),
                borderRadius: BorderRadius.circular(12)
              )
            ),
          ),

          SizedBox(height: 20),

          ElevatedButton.icon(onPressed: confirmarCadastro, icon: Icon(Icons.check, color: Color(0xFF3C2F2F),), label: Text('Confirmar Cadastro', 
          style: TextStyle(color: Color(0xFF3C2F2F), fontWeight: FontWeight.bold, fontSize: 16)), 
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(255, 249, 239, 1),
            foregroundColor: Color.fromARGB(255, 243, 184, 81),
            elevation: 4
          ),)

        ],
      ),),

    );
  }
}