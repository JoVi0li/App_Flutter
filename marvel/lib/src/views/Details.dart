import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel/components/skills.dart';

class Details extends StatelessWidget {
  final String heroName;
  final String name;
  final String description;
  final String image;
  final String age;
  final String weight;
  final String height;
  final String universe;

  const Details({
    Key? key,
    required this.name,
    required this.description,
    required this.image,
    required this.heroName,
    required this.age,
    required this.weight,
    required this.height,
    required this.universe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: GestureDetector(
          onDoubleTap: () {
            Navigator.pop(context);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: <Color>[
                        Color.fromRGBO(0, 0, 0, 0),
                        Color.fromRGBO(0, 0, 0, 1)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, top: 350),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          heroName,
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, right: 25),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/age.svg',
                                          color: Colors.white54,
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          age,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Gilroy',
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/weight.svg',
                                          color: Colors.white54,
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          weight,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Gilroy',
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/height.svg',
                                          color: Colors.white54,
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          height,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Gilroy',
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/universe.svg',
                                          color: Colors.white54,
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          universe,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Gilroy',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Container(
                                child: Text(
                                  description,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Habilidades',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Skills(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
