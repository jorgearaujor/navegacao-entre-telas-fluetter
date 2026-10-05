import 'package:flutter/material.dart';

class ConfiguracoesScreen extends StatelessWidget {
  const ConfiguracoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: ListView(
        children: const [
          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text('Tema escuro'),
            subtitle: Text('Usar o modo escuro do aplicativo'),
          ),
          ListTile(
            title: Text('Idioma'),
            subtitle: Text('Português (Brasil)'),
          ),
        ],
      ),
    );
  }
}
