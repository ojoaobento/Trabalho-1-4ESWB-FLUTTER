# Trabalho-1-4ESWB-FLUTTER

**TEMA: Galeria de Arte**


## Tabela de rastreio

| Exercício | Conceito | Arquivo e linha | Evidência |
|---|---|---|---|
| 1 | Entidade principal | [parte1-dart/bin/models/obra.dart:1](/parte1-dart/bin/models/obra.dart) | Classe `Obra` representa uma obra de arte |
| 2 | Herança | [parte1-dart/bin/models/obra_digital.dart](/parte1-dart/bin/models/obra_digital.dart) | `ObraDigital` herda de `Obra` |
| 3 | Composição | [parte1-dart/bin/models/galeria.dart](/parte1-dart/bin/models/galeria.dart) | `Galeria` possui uma lista de objetos `Obra` |
| 4 | Encapsulamento | [parte1-dart/bin/models/galeria.dart:5-16](/parte1-dart/bin/models/galeria.dart) | Lista `_obras` privada e acesso por getter; `totalObras` calcula a quantidade |
| 5 | Estrutura de tela | [parte2_flutter/lib/screens/home_page.dart:33-61](/parte2_flutter/lib/screens/home_page.dart) | `Scaffold`, `AppBar`, `Column`, total no topo e `Expanded` |
| 6 | Cartão | [parte2_flutter/lib/models/obra_card.dart:4-45](/parte2_flutter/lib/models/obra_card.dart) | `ObraCard` recebe uma `Obra` e utiliza `Container` com `BoxDecoration` |
| 7 | Lista | [parte2_flutter/lib/screens/home_page.dart:64-86](/parte2_flutter/lib/screens/home_page.dart) | `ListView.builder` exibe as seis obras iniciais |
| 8 | Navegação | [parte2_flutter/lib/screens/home_page.dart:72-82](/parte2_flutter/lib/screens/home_page.dart) | Toque em uma obra abre a tela de detalhes passando o objeto |
| 9 | Formulário | [parte2_flutter/lib/screens/cadastro_page.dart:18-94](/parte2_flutter/lib/screens/cadastro_page.dart) | Três `TextFormField`, cada um com `TextEditingController`, e botão de confirmação |
| 10 | Estado | [parte2_flutter/lib/screens/home_page.dart:43-58](/parte2_flutter/lib/screens/home_page.dart) | `setState` adiciona a nova obra e atualiza a lista e o total |