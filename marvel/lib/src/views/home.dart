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
                icon:  SvgPicture.asset(
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
                  heroName: 'Homem Aranha',
                  name: 'Peter Parker',
                  image: 'assets/chars/spider-man.png',
                  description: '',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Pantera Negra',
                  name: "T'Chala",
                  image: 'assets/chars/black-panther.png',
                  description: '',
                ),
                cardThree: CharacterCard(
                  heroName: 'Homem de Ferro',
                  name: 'Tony Stark',
                  image: 'assets/chars/iron-man.png',
                  description: '',
                ),
              ),
              CardList(
                listName: 'Vilões',
                cardOne: CharacterCard(
                  heroName: 'Caveira Vermelha',
                  name: 'Jöhann Schmidt ',
                  image: 'assets/chars/red-skull.png',
                  description: '',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Doutor Destino',
                  name: 'Victor Von Doom',
                  image: 'assets/chars/dr-doom.png',
                  description: '',
                ),
                cardThree: CharacterCard(
                  heroName: 'Duende Verde',
                  name: 'Norman Osborn',
                  image: 'assets/chars/green-goblin.png',
                  description: '',
                ),
              ),
              CardList(
                listName: 'Anti-heróis',
                cardOne: CharacterCard(
                  heroName: 'Deadpool',
                  name: 'Wade Wilson',
                  image: 'assets/chars/deadpool.png',
                  description: '',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Venom',
                  name: 'Eddie Brock',
                  image: 'assets/chars/venom.png',
                  description: '',
                ),
                cardThree: CharacterCard(
                  heroName: 'Justiceiro',
                  name: 'Francis Castle',
                  image: 'assets/chars/punisher.png',
                  description: '',
                ),
              ),
              CardList(
                listName: 'Alienígenas',
                cardOne: CharacterCard(
                  heroName: 'Thanos',
                  name: 'Deviant',
                  image: 'assets/chars/thanos.png',
                  description: '',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Ronam',
                  name: 'Kree',
                  image: 'assets/chars/ronan.png',
                  description: '',
                ),
                cardThree: CharacterCard(
                  heroName: 'Talos',
                  name: 'Skrull',
                  image: 'assets/chars/talos.png',
                  description: '',
                ),
              ),
              CardList(
                listName: 'Humanos',
                cardOne: CharacterCard(
                  heroName: 'Howard Stark',
                  name: 'Homem de Ferro',
                  image: 'assets/chars/howard-stark.png',
                  description: '',
                ),
                cardTwo: CharacterCard(
                  heroName: 'Mary Jane',
                  name: 'Homem Aranha',
                  image: 'assets/chars/mary-jane.png',
                  description: '',
                ),
                cardThree: CharacterCard(
                  heroName: 'Happy Hogan',
                  name: 'Homem de Ferro',
                  image: 'assets/chars/happy-hogan.png',
                  description: '',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
