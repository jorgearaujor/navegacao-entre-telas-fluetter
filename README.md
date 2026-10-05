# Receitas

App Flutter de receitas organizadas em três abas: Doces, Salgadas e Bebidas. Cada aba lista receitas que, ao serem tocadas, abrem uma tela de detalhes com descrição, ingredientes e modo de preparo. Um menu lateral (Drawer) dá acesso às telas de Configurações e Sobre.

## Funcionalidades

- Navegação por abas na parte inferior da tela
- Lista de receitas em cards por categoria
- Tela de detalhes de cada receita
- Drawer com Configurações e Sobre

## Como rodar

```bash
flutter pub get
flutter run
```

## Estrutura

```
lib/
  main.dart
  models/receita.dart
  data/receitas_data.dart
  screens/
    home_screen.dart
    detalhes_screen.dart
    configuracoes_screen.dart
    sobre_screen.dart
```
