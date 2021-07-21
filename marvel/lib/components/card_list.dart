import 'package:flutter/material.dart';
import 'package:marvel/components/character_card.dart';

class CardList extends StatefulWidget {
  const CardList({Key? key, required this.cardOne, required this.listName, required this.cardTwo, required this.cardThree}) : super(key: key);

  final String listName;
  final CharacterCard cardOne;
  final CharacterCard cardTwo;
  final CharacterCard cardThree;

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      widget.listName,
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromRGBO(242, 38, 75, 1)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Ver tudo',
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color.fromRGBO(183, 183, 200, 1)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Divider(
          height: 16,
          color: Colors.white,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              widget.cardOne,
              widget.cardTwo,
              widget.cardThree
            ],
          ),
        ),
      ],
    );
  }
}
