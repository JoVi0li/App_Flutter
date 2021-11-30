import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel/components/character_card.dart';
import 'package:marvel/components/card_list.dart';
import 'package:marvel/components/character_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromRGBO(248, 248, 248, 1),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: SvgPicture.asset(
                  'assets/icons/menu.svg',
                ),
              );
            },
          ),
          title: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/marvel.svg',
              color: Color.fromRGBO(237, 29, 36, 1),
            ),
            iconSize: 71,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg'),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bem vindo ao Marvel Heroes',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(183, 183, 200, 1)),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Escolha o seu personagem',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    )
                  ],
                ),
              ),
              CharacterIcons(),
              CardList(
                listName: 'Heróes',
                cardOne: CharacterCard(
                  heroName: 'Homem \nAranha',
                  name: 'Peter Parker',
                  image: 'assets/chars/spider-man.png',
                  age: '30 anos',
                  height: '71.80m',
                  universe: 'Terra 616',
                  weight: '78Kg',
                  description:
                      'Em Forest Hills, Queens, Nova York, o estudante de ensino médio, Peter Parker, é um cientista orfão que vive com seu tio Ben e tia May.'
                      ' Ele é mordido por uma aranha radioativa em uma exposição científica e adquire a agilidade e a força proporcional de um aracnídeo.'
                      ' Junto com a super força, Parker ganha a capacidade de andar nas paredes e tetos. \n\n'
                      ' Através de sua habilidade nativa para a ciência, ele desenvolve um aparelho que o permitir lançar teias artificiais.'
                      ' Inicialmente buscando capitalizar suas novas habilidades, Parker cria um traje e, como Homem Aranha, torna-se uma estrela de televisão.',
                ),
                cardTwo: CharacterCard(
                    heroName: 'Pantera \nNegra',
                    name: "T'Chala",
                    image: 'assets/chars/black-panther.png',
                    age: '47 anos',
                    height: '1.83m',
                    universe: 'Terra 616',
                    weight: '91Kg',
                    description:
                        'O Pantera Negra é o título cerimonial atribuído ao chefe da Tribo Pantera da avançada nação africana de Wakanda.'
                        ' Além de governar o país, ele também é chefe de suas várias tribos (coletivamente conhecida como Wakandas). \n\n'
                        ' O uniforme do Pantera é um símbolo oficial (chefe de estado) e é usado mesmo durante missões diplomáticas.'
                        ' O Pantera é um título hereditário, mas ainda é preciso ganhar um desafio.'
                        ' No passado distante, um enorme meteorito maciço composto de vibranium - elemento que absorve o som,'
                        'entre outras propriedades especiais - caiu em Wakanda, e é desenterrado uma geração antes dos eventos do presente.'),
                cardThree: CharacterCard(
                  heroName: 'Homem \nde Ferro',
                  name: 'Tony Stark',
                  image: 'assets/chars/iron-man.png',
                  age: '50 anos',
                  height: '1.85m',
                  universe: 'Terra 616',
                  weight: '102Kg',
                  description:
                      'Durante a guerra do Vietnã, o inventor e empresário Tony Stark foi vítima de uma explosão de granada.'
                      ' Stark sobreviveu à explosão mas estilhaços do explosivo se alojaram próximo ao seu coração, ameaçando sua vida.'
                      ' Ele foi capturado e levado até o líder Wong Chu, que o forçou a criar uma poderosa arma,'
                      'mas ele criou algo que o mantivesse vivo e permitisse derrotar os captores. \n\n'
                      ' O Homem de Ferro enfrentou os soldados e os derrotou. Sua armadura resistia aos disparos contra ele.'
                      ' Wong Chu tentou fugir e o Homem de Ferro incendiou o galpão de munições fazendo com que a explosão o matasse.',
                ),
              ),
              CardList(
                listName: 'Vilões',
                cardOne: CharacterCard(
                  heroName: 'Caveira \nVermelha',
                  name: 'Jöhann Schmidt ',
                  image: 'assets/chars/red-skull.png',
                  age: '79 anos',
                  height: '1.88m',
                  universe: 'Terra 616',
                  weight: '91Kg',
                  description:
                      'Jöhann Schmidt é filho de um camponês analfabeto e bêbado.'
                      ' Sua mãe morreu ao lhe dar a luz e seu pai, que tentou afogá-lo por causa disso em uma bacia '
                      'e foi contido pelo obstetra, logo em seguida suicídou-se.'
                      'Schmidt fugiu aos sete anos do orfanato onde foi criado, cresceu nas ruas da Alemanha,'
                      ' sendo preso várias vezes por pequenos crimes. \n\n Hitler encontrou Schmidt quando ele trabalhava como camareiro em um hotel no qual o líder nazista se hospedou.'
                      'Hitler o treinou pessoalmente, oferecendo ao final do processo uma máscara vermelha no formato de um crânio e o nome que carrega até hoje.',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Doutor \nDestino',
                  name: 'Victor Von Doom',
                  image: 'assets/chars/dr-doom.png',
                  age: '58 anos',
                  height: '1.92m',
                  universe: 'Terra 616',
                  weight: '188Kg',
                  description:
                      'Victor nasceu em Haasenstadt, um vilarejo que fica na Latvéria,'
                      ' filho de Werner von Doom, um conhecido curandeiro cigano, e Cynthia von Doom,'
                      ' que diziam ser uma bruxa.\n\nSua mãe foi morta quando ele ainda era uma criança.'
                      ' Ela tentara adquirir poder para proteger sua tribo cigana da perseguição que sofriam por parte do governo vigente sobre a Latvéria.'
                      ' Cynthia tentou obter esse poder através de um trato com o demônio Mephisto.\n\nVictor von Doom ficou aos cuidados de Bóris,'
                      ' um dos membros da comunidade cigana de que pertencia. Victor jurou que faria o mundo todo pagar pela morte de seus pais.',
                ),
                cardThree: CharacterCard(
                  heroName: 'Duende \nVerde',
                  name: 'Norman Osborn',
                  image: 'assets/chars/green-goblin.png',
                  age: '46 anos',
                  height: '1.93m',
                  universe: 'Terra 616',
                  weight: '174Kg',
                  description: 'Filho do rico empresário Amberson Osborn,'
                      ' Norman foi vítima de abuso quando o pai perdeu seu dinheiro e se tornou alcóolatra e violento,'
                      ' o que iniciou suas tendências homicidas e o desejo de ser um chefe de família melhor. '
                      '\n\nNorman estudou química, administração e engenharia elétrica na faculdade, onde conheceu sua futura esposa Emily,'
                      ' mãe de seu filho Harry Osborn. \n\nApós formar, Norman se uniu a seu professor Mendel Stromm para fundar a empresa química Oscorp,'
                      ' que logo o tornaria milionário de novo, porém quando Emily morre Norman fica abalado a ponto de focar mais e mais no trabalho, neglicenciando a criação do filho.',
                ),
              ),
              CardList(
                listName: 'Anti-heróis',
                cardOne: CharacterCard(
                  heroName: 'Deadpool',
                  name: 'Wade Wilson',
                  image: 'assets/chars/deadpool.png',
                  age: '29 anos',
                  height: '1.88m',
                  universe: 'Terra 616',
                  weight: '91Kg',
                  description:
                      'O jovem Wade saiu do controle quando sua mãe morreu de câncer quando ele tinha 6 anos de idade,'
                      ' tornando-o um garoto solitário e atormentado, sem nenhuma explicação. Seu pai – que era um bêbado do exército'
                      '– o espancava e o tratava mal. \n\nAssim, com uma vida desestruturada, Wade tornou-se um delinquente na adolescência.'
                      ' Um dia chegou a agredir friamente seu pai com uma garrafa mostrando alguns traços de insanidade, matando-o no processo.'
                      '\n\nDepois disso, Wade iniciou sua carreira de mercenário. Ele aceitava assassinar apenas aqueles merecedores da morte.',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Venom',
                  name: 'Eddie Brock',
                  image: 'assets/chars/venom.png',
                  age: '34 anos',
                  height: '1.92m',
                  universe: 'Terra 616',
                  weight: '104Kg',
                  description:
                      'Venom é o ser resultante da simbiose entre uma criatura alienígena e o jornalista Eddie Brock.'
                      ' Apesar de já ter tido minisséries próprias, a maioria de suas aparições é como inimigo do personagem Homem Aranha.'
                      '\n\nA característica marcante de Venom, além do uniforme negro, é a desproporcional e assustadora mandíbula.'
                      '\n\nAntes de fundir-se ao simbionte e tornar-se o Venom, Eddie Brock era um repórter do jornal Clarim Diário.'
                      '\n\nA origem do simbionte alienígena foi mostrada no evento intitulado Guerras Secretas, quando foi usado como "uniforme" pelo próprio Homem Aranha.',
                ),
                cardThree: CharacterCard(
                  heroName: 'Justiceiro',
                  name: 'Francis Castle',
                  image: 'assets/chars/punisher.png',
                  age: '46 anos',
                  height: '1.87m',
                  universe: 'Terra 616',
                  weight: '95Kg',
                  description:
                      'O Justiceiro é um vigilante, que considera crimes como assassinato,'
                      ' sequestro e tortura aceitáveis como táticas de combate ao crime.'
                      ' \n\nMotivado pela morte de sua família, que foi morta pelos capangas do mafioso Costa,'
                      ' quando testemunharam uma execução proveniente de uma guerra entre gangues no Central Park, em Nova York.'
                      ' \n\nO Justiceiro pode ser considerado um homem-guerra entre todos os criminosos em geral, conhecendo quase todo o tipo de armamento.'
                      ' \n\nComo veterano de guerra, Castle é um mestre em táticas furtivas e emboscadas, bem como o manuseio de várias armas.',
                ),
              ),
              CardList(
                listName: 'Alienígenas',
                cardOne: CharacterCard(
                  heroName: 'Thanos',
                  name: 'Deviant',
                  image: 'assets/chars/thanos.png',
                  age: '47 anos',
                  height: '2.15m',
                  universe: 'Terra 616',
                  weight: '447Kg',
                  description:
                      "A lua Titã era governada por Mentor (A'Lars), quando então reinava paz e tecnologia."
                      " Mentor tinha dois filhos: Eros e Thanos. \n\nO primeiro tinha o poder de estimular os centros de prazer de seres vivos sencientes."
                      " O outro, entretanto, era bem mais poderoso e almejava ainda mais. \n\nAssim, Thanos se voltou contra seu pai e contra o reino, forçando Mentor a procurar Kronos."
                      " \n\nEste criou Drax, o Destruidor, para que ele eliminasse Thanos. Mas o Destruidor falhou de modo que Thanos conseguiu conquistar o trono de Titã."
                      "\n\nEm seguida, partiu pela Via Láctea, com o intuito de apoderar-se do Cubo Cósmico, um objeto que satisfaz quaisquer desejos de seu possuidor.",
                ),
                cardTwo: CharacterCard(
                  heroName: 'Ronam',
                  name: 'Kree',
                  image: 'assets/chars/ronan.png',
                  age: '53 anos',
                  height: '1.90m',
                  universe: 'Terra 616',
                  weight: '85Kg',
                  description:
                      "Ronan nasceu no planeta Hala, capital do Império alienígena Kree na Grande Nuvem de Magalhães;"
                      " é membro do 'Conselho dos Acusadores', que são o equivalente a governadores, militares e juristas."
                      "\n\nSua ascensão na hierarquia foi extraordinária, logo acabou se tornando o terceiro mais poderoso do Império Kree."
                      "\n\nA entidade conhecida como: 'Inteligência Suprema' o nomeou a 'Supremo Acusador do Império Kree',"
                      " e neste cargo ele ficou conhecido simplesmente como Ronan, o Acusador. \n\nMais tarde,"
                      " Ronan foi enviado à Terra para investigar a derrota do robô Sentry - 459 para Quarteto Fantástico.",
                ),
                cardThree: CharacterCard(
                  heroName: 'Talos',
                  name: 'Skrull',
                  image: 'assets/chars/talos.png',
                  age: '26 anos',
                  height: '1.93m',
                  universe: 'Terra 616',
                  weight: '298Kg',
                  description:
                      "Talos, considerado um Mutante pelo seu povo, é um Skrull que nasceu sem a capacidade de moldar a mudança."
                      " Ele compensou ao tornar-se um dos Skrulls mais temidos do seu planeta, ganhando o título de Talos, o Indomado,"
                      " devido à sua natureza selvagem e sinistra. \n\nContudo, depois de ter sido capturado pelos Kree,"
                      " recusou-se a cometer suicídio na esperança de ganhar glória para pela sua sobrevivência."
                      " Em vez disso, foi ridicularizado e renomeado como o mais humilhante 'Talos, o Domado'."
                      "\n\nTalos foi chamado ao planeta Godthab Omega por Glorian, onde acabou lutando contra Devos, o Devastador.",
                ),
              ),
              CardList(
                listName: 'Humanos',
                cardOne: CharacterCard(
                  heroName: 'Howard \nStark',
                  name: 'Homem de Ferro',
                  image: 'assets/chars/howard-stark.png',
                  age: '103 anos',
                  height: '1.77m',
                  universe: 'Terra 616',
                  weight: '82Kg',
                  description:
                      "O filho do Sr. Howard Stark, Howard Stark nasceu em Richford, Nova York."
                      " Um inventor ávido e genial desde pequeno, ele foi um cientista brilhante ao longo de sua vida."
                      " Ele e seu pai trabalharam em vários projetos e, mais tarde fundaram as Indústrias Stark."
                      "\n\nAo longo de sua idade adulta, Stark trabalhou em vários projetos governamentais,"
                      " como o projeto do Capitão América na Primeira Guerra Mundial com John Crowe Ransom; "
                      "O Projeto Manhattan na Segunda Guerra Mundial; e os robôs 'Arsenal', escondidos no subsolo de sua mansão."
                      "\n\nDurante a década de 1950, Stark foi um agente da Shield, em parceria com Nathaniel Richards.",
                ),
                cardTwo: CharacterCard(
                  heroName: 'Mary \nJane',
                  name: 'Homem Aranha',
                  image: 'assets/chars/mary-jane.png',
                  age: '55 anos',
                  height: '1.72m',
                  universe: 'Terra 616',
                  weight: '54Kg',
                  description:
                      "Mary Jane é retratada como uma ruiva extremamente bonita,"
                      " de olhos verdes e foi o principal interesse romântico de Peter Parker durante a maior parte do tempo."
                      " nInicialmente, ela competiu com outras pelo afeto de Peter, com destaque para Gwen Stacy e a Gata Negra."
                      "\n\nAs primeiras edições de O Incrível Homem Aranha apresentavam uma piada correndo sobre Peter se esquivando das tentativas de sua tia May de lhe arranjar"
                      " 'aquela simpática garota Watson do lado', que Peter ainda não tinha conhecido e assumiu que não seria o seu tipo, já que sua tia gostava dela."
                      " Mais tarde Peter começa a namorar com Mary Jane.",
                ),
                cardThree: CharacterCard(
                  heroName: 'Happy \nHogan',
                  name: 'Homem de Ferro',
                  image: 'assets/chars/happy-hogan.png',
                  age: '57 anos',
                  height: '1.85m',
                  universe: 'Terra 616',
                  weight: '90Kg',
                  description:
                      "Happy Hogan é um ex-campeão de boxe que salvou Tony Stark durante acidente numa corrida de 'stock car'."
                      " Em retribuição, Stark o contratou como seu motorista e guarda-costas pessoal. \n\nNo início, Hogan era um personagem cômico, tanto física quanto psicologicamente."
                      " Tinha um aspecto 'bronco', típicos de um boxeador, com orelhas em formato couve-flor e pescoço largo. \n\nCom o tempo, os autores foram suavizando sua figura."
                      " Seu visual “leão de chácara” foi sendo abandonado e ele se tornou mais magro, mais inteligente e boa-pinta. \n\nO apelido irônico 'Happy' vem da época em que ele lutava boxe, porque nunca sorria.",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
