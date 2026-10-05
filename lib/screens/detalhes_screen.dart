import 'package:flutter/material.dart';

import '../models/receita.dart';

class DetalhesScreen extends StatelessWidget {
  final Receita receita;

  const DetalhesScreen({super.key, required this.receita});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(receita.titulo),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              receita.titulo,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              receita.descricao,
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(
              'Ingredientes',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ...receita.ingredientes.map(
              (ingrediente) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text('• $ingrediente'),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Modo de Preparo',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ...receita.modoPreparo.asMap().entries.map(
                  (entrada) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text('${entrada.key + 1}. ${entrada.value}'),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
