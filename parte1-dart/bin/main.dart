import 'models/Obra.dart';
import 'models/ObraDigital.dart';


void main() {

  Obra o1 = Obra(titulo: "Noite Estrelada", artista: "Vincent van Gogh", anoCriacao: 1889, valor: 150000.00);
  ObraDigital o2 = ObraDigital(anoCriacao: 1503, artista: "Leonardo da Vinci", titulo: "Mona Lisa Digital", valor: 5000.0, formato: "PNG", tamanhoMb: 15.5);
  
  print("========= [1] ENTIDADE PRINCIPAL =========");
  print("Obra: ${o1.titulo} | Artista: ${o1.artista} | Ano de Criação: ${o1.anoCriacao} | Valor: ${o1.valor}");
  print("========= [2] HERANÇA =========");
  print("Obra Física -> ficha: ${o1.ficha()}");
  print("Obra Digital -> ficha: ${o2.ficha()}");



}
