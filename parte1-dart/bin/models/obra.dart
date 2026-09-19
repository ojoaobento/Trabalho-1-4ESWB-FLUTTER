class Obra{
  String titulo='';
  String artista='';
  int anoCriacao=0;
  String movimentoArtistico='';
  DateTime? dtCadastro;

  Obra({
  required this.titulo,
  required this.artista,
  required this.anoCriacao,
  this.movimentoArtistico = 'Não informado',
}) : dtCadastro = DateTime.now();

  String ficha(){
    return ("Obra $titulo dos anos $anoCriacao");
  }

}
