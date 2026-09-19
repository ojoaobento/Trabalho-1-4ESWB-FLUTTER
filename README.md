## Tema: Galeria de Arte

Este projeto tem como tema uma **Galeria de Arte**, onde são cadastradas e exibidas diferentes obras de arte.

A classe `Obra` representa cada obra, contendo informações como título, artista, ano de criação e movimento artístico. A classe `Galeria` é responsável por agrupar as obras e controlar a quantidade de itens cadastrados.

Também foi criada a classe `ObraDigital`, que utiliza **herança** da classe `Obra` para representar obras digitais com informações adicionais.

O projeto foi desenvolvido em duas partes:

- **Parte 1 — Dart:** implementação das classes e conceitos de orientação a objetos.
- **Parte 2 — Flutter:** aplicação visual para listar, visualizar detalhes e cadastrar obras.


## Tabela de rastreio

| Exercício | Conceito | Arquivo e linha | Evidência |
|---|---|---|---|
| 1 | Entidade principal | [obra.dart:8](./parte1-dart/bin/models/obra.dart#L8) | Classe `Obra` representa uma obra de arte |
| 2 | Herança | [obra_digital.dart:19](./parte1-dart/bin/models/obra_digital.dart#L19) | `ObraDigital` herda de `Obra` |
| 3 | Composição | [galeria.dart:23](./parte1-dart/bin/models/galeria.dart#L23) | `Galeria` possui uma lista de objetos `Obra` |
| 4 | Encapsulamento | [galeria.dart:7-20](./parte1-dart/bin/models/galeria.dart#L7-L20) | Lista `_obras` privada e acesso por getter; `totalObras` calcula a quantidade |
| 5 | Estrutura de tela | [home_page.dart:36-97](./parte2_flutter/lib/screens/home_page.dart#L36-L97) | `Scaffold`, `AppBar`, `Column`, total no topo e `Expanded` |
| 6 | Cartão | [obra_card.dart:4-61](./parte2_flutter/lib/models/obra_card.dart#L4-L61) | `ObraCard` recebe uma `Obra` e utiliza `Container` com `BoxDecoration` |
| 7 | Lista | [home_page.dart:71-92](./parte2_flutter/lib/screens/home_page.dart#L71-L92) | `ListView.builder` exibe as seis obras iniciais |
| 8 | Navegação | [home_page.dart:75-89](./parte2_flutter/lib/screens/home_page.dart#L75-L89) | Toque em uma obra abre a tela de detalhes passando o objeto |
| 9 | Formulário | [cadastro_page.dart:4-157](./parte2_flutter/lib/screens/cadastro_page.dart#L4-L157) | Três `TextFormField`, cada um com `TextEditingController`, e botão de confirmação |
| 10 | Estado | [home_page.dart:45-59](./parte2_flutter/lib/screens/home_page.dart#L45-L59) | `setState` adiciona a nova obra e atualiza a lista e o total |


## Como executar o projeto

Para executar a **Parte 1 — Dart**, acesse a pasta `parte1-dart` pelo terminal e execute o comando `dart run`. Para executar a **Parte 2 — Flutter**, acesse a pasta `parte2_flutter`, execute `flutter pub get` para instalar as dependências e, em seguida, `flutter run` para iniciar o aplicativo. Caso queira executar diretamente no navegador Google Chrome, utilize `flutter run -d chrome`. 
