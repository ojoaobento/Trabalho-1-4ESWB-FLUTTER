import 'models/Obra.dart';
import 'models/ObraDigital.dart';
import 'models/Galeria.dart';


void main() {

  Obra o1 = Obra(titulo: "Noite Estrelada", artista: "Vincent van Gogh", anoCriacao: 1889);

  Obra o2 = Obra(titulo: "A Última Ceia", artista: "Leonardo da Vinci", anoCriacao: 1498);
  Obra o3 = Obra(titulo: "O Grito", artista: "Edvard Munch", anoCriacao: 1893);
  Obra o4 = Obra(titulo: "Guernica", artista: "Pablo Picasso", anoCriacao: 1937);

  ObraDigital od1 = ObraDigital(anoCriacao: 1503, artista: "Leonardo da Vinci", titulo: "Mona Lisa Digital", formato: "PNG", tamanhoMb: 15.5);
  Galeria g1 = Galeria(nome: "Clássicas");
  g1.adicionar(o2);
  g1.adicionar(o3);
  g1.adicionar(o4);

  print("========= [1] ENTIDADE PRINCIPAL =========");
  print("Obra: ${o1.titulo} | Artista: ${o1.artista} | Ano de Criação: ${o1.anoCriacao}");
  print("========= [2] HERANÇA =========");
  print("Obra Física -> ficha: ${o1.ficha()}");
  print("Obra Digital -> ficha: ${od1.ficha()}");
  print("========= [3] COMPOSIÇÃO =========");
  g1.mostrarGaleria(g1);




}
