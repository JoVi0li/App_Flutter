import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel/components/card_list.dart';
import 'package:marvel/components/character_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromRGBO(248, 248, 248, 1),
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
            ),
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
      body: Column(
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
          
          CardList(),
        ],
      ),
    );
  }
}
