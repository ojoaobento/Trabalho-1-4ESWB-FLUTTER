class Obra{
  String titulo='';
  String artista='';
  int anoCriacao=0;
  double valor = 0.0;
  DateTime? dtCadastro;

  Obra({
  required this.titulo,
  required this.artista,
  required this.anoCriacao,
  required this.valor,
}) : dtCadastro = DateTime.now();

}