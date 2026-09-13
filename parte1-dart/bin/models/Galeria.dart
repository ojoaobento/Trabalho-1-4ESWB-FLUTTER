import 'Obra.dart';

class Galeria{

    String nome;

    List<Obra> obras = [];

    Galeria({
      required this.nome
    });

    void adicionar(Obra obra){
      obras.add(obra);
    }

    void mostrarGaleria(Galeria galeria){
      print("A galeria de obras ${galeria.nome} contém ${obras.length} obras: ");
      for(Obra mostrarObra in obras){
        print(" - ${mostrarObra.titulo}");
      }
    }
}