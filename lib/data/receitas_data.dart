import '../models/receita.dart';

const List<Receita> receitasDoces = [
  Receita(
    titulo: 'Brigadeiro',
    descricao: 'O clássico docinho brasileiro de chocolate, perfeito para '
        'qualquer festa.',
    ingredientes: [
      '1 lata de leite condensado',
      '1 colher de sopa de manteiga',
      '4 colheres de sopa de chocolate em pó',
      'Chocolate granulado para enrolar',
    ],
    modoPreparo: [
      'Em uma panela, misture o leite condensado, a manteiga e o chocolate '
          'em pó.',
      'Cozinhe em fogo médio, mexendo sempre, até desgrudar do fundo da panela.',
      'Deixe esfriar, enrole em bolinhas e passe no chocolate granulado.',
    ],
  ),
  Receita(
    titulo: 'Pudim de Leite',
    descricao: 'Pudim cremoso de leite condensado com calda de caramelo.',
    ingredientes: [
      '1 lata de leite condensado',
      '2 latas de leite (use a lata como medida)',
      '3 ovos',
      '1 xícara de açúcar para a calda',
    ],
    modoPreparo: [
      'Prepare a calda derretendo o açúcar até ficar dourado e forre a forma.',
      'Bata no liquidificador o leite condensado, o leite e os ovos.',
      'Despeje na forma e asse em banho-maria por cerca de 1 hora.',
      'Deixe gelar antes de desenformar.',
    ],
  ),
  Receita(
    titulo: 'Mousse de Chocolate',
    descricao: 'Sobremesa leve e aerada, feita com poucos ingredientes.',
    ingredientes: [
      '1 lata de leite condensado',
      '1 lata de creme de leite',
      '200g de chocolate meio amargo',
    ],
    modoPreparo: [
      'Derreta o chocolate em banho-maria ou no micro-ondas.',
      'Misture o chocolate derretido com o leite condensado e o creme de leite.',
      'Leve à geladeira por pelo menos 3 horas antes de servir.',
    ],
  ),
];

const List<Receita> receitasSalgadas = [
  Receita(
    titulo: 'Coxinha de Frango',
    descricao: 'Salgado frito e crocante recheado com frango desfiado.',
    ingredientes: [
      '2 xícaras de caldo de galinha',
      '2 xícaras de farinha de trigo',
      '2 xícaras de frango cozido e desfiado',
      'Farinha de rosca e óleo para fritar',
    ],
    modoPreparo: [
      'Ferva o caldo e adicione a farinha de uma vez, mexendo até formar '
          'uma massa.',
      'Deixe a massa esfriar, abra na mão e recheie com o frango.',
      'Modele no formato de coxinha, passe na farinha de rosca e frite.',
    ],
  ),
  Receita(
    titulo: 'Pão de Queijo',
    descricao: 'Quitute mineiro leve por dentro e crocante por fora.',
    ingredientes: [
      '500g de polvilho azedo',
      '1 xícara de leite',
      '1/2 xícara de óleo',
      '2 ovos',
      '200g de queijo meia cura ralado',
    ],
    modoPreparo: [
      'Ferva o leite com o óleo e despeje sobre o polvilho, misturando bem.',
      'Quando amornar, adicione os ovos e o queijo e sove a massa.',
      'Faça bolinhas e asse em forno a 180°C até dourar.',
    ],
  ),
  Receita(
    titulo: 'Empadinha de Palmito',
    descricao: 'Massa amanteigada com recheio cremoso de palmito.',
    ingredientes: [
      '3 xícaras de farinha de trigo',
      '200g de manteiga',
      '1 ovo',
      '1 vidro de palmito picado',
    ],
    modoPreparo: [
      'Misture a farinha, a manteiga e o ovo até formar uma massa homogênea.',
      'Refogue o palmito e tempere a gosto para o recheio.',
      'Forre as forminhas, coloque o recheio, cubra e asse até dourar.',
    ],
  ),
];

const List<Receita> receitasBebidas = [
  Receita(
    titulo: 'Caipirinha',
    descricao: 'O drink brasileiro mais famoso, feito com limão e cachaça.',
    ingredientes: [
      '1 limão',
      '2 colheres de açúcar',
      '50ml de cachaça',
      'Gelo a gosto',
    ],
    modoPreparo: [
      'Corte o limão em pedaços e macere com o açúcar no copo.',
      'Adicione o gelo e a cachaça.',
      'Misture bem e sirva gelado.',
    ],
  ),
  Receita(
    titulo: 'Vitamina de Banana',
    descricao: 'Bebida nutritiva e cremosa, ótima para o café da manhã.',
    ingredientes: [
      '2 bananas',
      '2 xícaras de leite',
      '1 colher de aveia',
      'Mel a gosto',
    ],
    modoPreparo: [
      'Coloque todos os ingredientes no liquidificador.',
      'Bata até obter uma mistura homogênea.',
      'Sirva imediatamente, de preferência gelada.',
    ],
  ),
  Receita(
    titulo: 'Suco de Laranja',
    descricao: 'Suco natural, refrescante e cheio de vitamina C.',
    ingredientes: [
      '4 laranjas',
      'Gelo a gosto',
      'Açúcar (opcional)',
    ],
    modoPreparo: [
      'Esprema as laranjas para extrair o suco.',
      'Adoce a gosto, se desejar.',
      'Adicione gelo e sirva na hora.',
    ],
  ),
];
