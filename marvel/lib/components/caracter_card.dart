import 'package:flutter/material.dart';

class CaracterCard extends StatelessWidget {
  const CaracterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 140,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/chars/spider-man.png'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color.fromRGBO(0, 0, 0, 0),
                Color.fromRGBO(0, 0, 0, 1)
              ])),
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Peter Parker',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Homem Aranha',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
