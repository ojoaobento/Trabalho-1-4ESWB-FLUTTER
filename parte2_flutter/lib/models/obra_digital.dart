import 'obra.dart';

class ObraDigital extends Obra{

  String formato='';
  double tamanhoMb;

  ObraDigital({
  required super.anoCriacao,
  required super.artista,
  required super.titulo,
  required super.movimentoArtistico,
  required this.formato,
  required this.tamanhoMb
  });


  @override
  String ficha(){
    return("Obra Digital $titulo da Era Digital $anoCriacao");
  }

}