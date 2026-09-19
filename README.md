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
| 1 | Entidade principal | [parte1-dart/bin/models/obra.dart:8](/parte1-dart/bin/models/obra.dart) | Classe `Obra` representa uma obra de arte |
| 2 | Herança | [parte1-dart/bin/models/obra_digital.dart:19](/parte1-dart/bin/models/obra_digital.dart) | `ObraDigital` herda de `Obra` |
| 3 | Composição | [parte1-dart/bin/models/galeria.dart:23](/parte1-dart/bin/models/galeria.dart) | `Galeria` possui uma lista de objetos `Obra` |
| 4 | Encapsulamento | [parte1-dart/bin/models/galeria.dart:7-20](/parte1-dart/bin/models/galeria.dart) | Lista `_obras` privada e acesso por getter; `totalObras` calcula a quantidade |
| 5 | Estrutura de tela | [parte2_flutter/lib/screens/home_page.dart:36-97](/parte2_flutter/lib/screens/home_page.dart) | `Scaffold`, `AppBar`, `Column`, total no topo e `Expanded` |
| 6 | Cartão | [parte2_flutter/lib/models/obra_card.dart:4-61](/parte2_flutter/lib/models/obra_card.dart) | `ObraCard` recebe uma `Obra` e utiliza `Container` com `BoxDecoration` |
| 7 | Lista | [parte2_flutter/lib/screens/home_page.dart:71-92](/parte2_flutter/lib/screens/home_page.dart) | `ListView.builder` exibe as seis obras iniciais |
| 8 | Navegação | [parte2_flutter/lib/screens/home_page.dart:75-89](/parte2_flutter/lib/screens/home_page.dart) | Toque em uma obra abre a tela de detalhes passando o objeto |
| 9 | Formulário | [parte2_flutter/lib/screens/cadastro_page.dart:4-157](/parte2_flutter/lib/screens/cadastro_page.dart) | Três `TextFormField`, cada um com `TextEditingController`, e botão de confirmação |
| 10 | Estado | [parte2_flutter/lib/screens/home_page.dart:45-59](/parte2_flutter/lib/screens/home_page.dart) | `setState` adiciona a nova obra e atualiza a lista e o total |