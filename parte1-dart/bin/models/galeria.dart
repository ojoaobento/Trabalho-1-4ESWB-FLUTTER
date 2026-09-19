import 'obra.dart';

class Galeria{

    String nome;

    final List<Obra> _obras = [];

    Galeria({
      required this.nome
    });

    List<Obra> get obras => _obras;

    void adicionar(Obra obra){
      _obras.add(obra);
    }

    int get totalObras{
      return _obras.length;
    }

    void mostrarGaleria(){
      print("A galeria de obras $nome contém as seguintes obras: ");
      for(Obra mostrarObra in obras){
        print(" - ${mostrarObra.titulo}");
      }
    }
}
