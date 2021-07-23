import 'package:flutter/material.dart';
import 'package:marvel/src/views/details.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    Key? key,
    required this.name,
    required this.heroName,
    required this.image,
    required this.description,
    required this.age,
    required this.weight,
    required this.height,
    required this.universe,
  }) : super(key: key);

  final String name;
  final String heroName;
  final String image;
  final String description;
  final String age;
  final String weight;
  final String height;
  final String universe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details(
                  image: this.image,
                  name: this.name,
                  heroName: this.heroName,
                  description: this.description,
                  age: this.age,
                  height: this.height,
                  universe: this.universe,
                  weight: this.weight,
                ),
              ));
        },
        onDoubleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Favoritado!',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.red,
              padding: EdgeInsets.only(top: 7),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: 140,
            height: 230,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
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
                      name,
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      heroName,
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
        ),
      ),
    );
  }
}
