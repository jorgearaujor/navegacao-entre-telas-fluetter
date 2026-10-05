import 'package:flutter/material.dart';

import '../data/receitas_data.dart';
import '../models/receita.dart';
import 'configuracoes_screen.dart';
import 'detalhes_screen.dart';
import 'sobre_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Receitas Favoritas'),
        ),
        drawer: const _MenuLateral(),
        body: const TabBarView(
          children: [
            _ListaReceitas(receitas: receitasDoces),
            _ListaReceitas(receitas: receitasSalgadas),
            _ListaReceitas(receitas: receitasBebidas),
          ],
        ),
        bottomNavigationBar: const Material(
          child: TabBar(
            tabs: [
              Tab(text: 'Doces'),
              Tab(text: 'Salgadas'),
              Tab(text: 'Bebidas'),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListaReceitas extends StatelessWidget {
  final List<Receita> receitas;

  const _ListaReceitas({required this.receitas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: receitas.length,
      itemBuilder: (context, index) {
        final receita = receitas[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            title: Text(
              receita.titulo,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(receita.descricao),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesScreen(receita: receita),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _MenuLateral extends StatelessWidget {
  const _MenuLateral();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Receitas Favoritas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Configurações'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ConfiguracoesScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SobreScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
