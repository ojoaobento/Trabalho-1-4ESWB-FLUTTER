import 'models/Obra.dart';


void main() {

  Obra o1 = Obra(titulo: "Noite Estrelada", artista: "Vincent van Gogh", anoCriacao: 1889, valor: 150000.00);

  print("========= [1] ENTIDADE PRINCIPAL =========");
  print("Obra: ${o1.titulo} | Artista: ${o1.artista} | Ano de Criação: ${o1.anoCriacao} | Valor: ${o1.valor}");

}
