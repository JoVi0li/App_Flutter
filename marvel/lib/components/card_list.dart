import 'package:flutter/material.dart';
import 'package:marvel/components/caracter_card.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 50),
          child: Row(
            children: [
              Text(
                'Heróes',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromRGBO(242, 38, 75, 1)),
              ),
              SizedBox(
                width: 230,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Ver tudo',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color.fromRGBO(183, 183, 200, 1)),
                ),
              )
            ],
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
              CaracterCard(),
            ],
          ),
        ),
      ],
    );
  }
}
