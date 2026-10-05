class Receita {
  final String titulo;
  final String descricao;
  final List<String> ingredientes;
  final List<String> modoPreparo;

  const Receita({
    required this.titulo,
    required this.descricao,
    required this.ingredientes,
    required this.modoPreparo,
  });
}
