import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navegacao_entre_telas/main.dart';

void main() {
  testWidgets('Exibe as três abas de categorias na tela principal',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Receitas Favoritas'), findsWidgets);
    expect(find.text('Doces'), findsOneWidget);
    expect(find.text('Salgadas'), findsOneWidget);
    expect(find.text('Bebidas'), findsOneWidget);
  });

  testWidgets('Tocar em uma receita abre a tela de detalhes',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Brigadeiro'));
    await tester.pumpAndSettle();

    expect(find.text('Ingredientes'), findsOneWidget);
    expect(find.text('Modo de Preparo'), findsOneWidget);
  });

  testWidgets('Drawer dá acesso a Configurações e Sobre',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final ScaffoldState state = tester.firstState(find.byType(Scaffold));
    state.openDrawer();
    await tester.pumpAndSettle();

    expect(find.text('Configurações'), findsOneWidget);
    expect(find.text('Sobre'), findsOneWidget);
  });
}
