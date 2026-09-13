class Obra{
  String titulo='';
  String artista='';
  int anoCriacao=0;
  DateTime? dtCadastro;

  Obra({
  required this.titulo,
  required this.artista,
  required this.anoCriacao,
}) : dtCadastro = DateTime.now();

  String ficha(){
    return ("Obra $titulo dos anos $anoCriacao");
  }

}