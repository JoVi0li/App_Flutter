import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

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
                      image: AssetImage('assets/chars/spider-man.png'),
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
                          'Peter Parker',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Homem\nAranha',
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
                                          '30 anos',
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
                                          '78Kg',
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
                                          '1.80m',
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
                                          'Terra 616',
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
                                  'Em Forest Hills, Queens, Nova York, o estudante de ensino médio, Peter Parker, é um cientista orfão que vive com seu tio Ben e tia May.'
                                  ' Ele é mordido por uma aranha radioativa em uma exposição científica e adquire a agilidade e a força proporcional de um aracnídeo.'
                                  ' Junto com a super força, Parker ganha a capacidade de andar nas paredes e tetos. \n\n'
                                  ' Através de sua habilidade nativa para a ciência, ele desenvolve um aparelho que o permitir lançar teias artificiais.'
                                  ' Inicialmente buscando capitalizar suas novas habilidades, Parker cria um traje e, como Homem Aranha, torna-se uma estrela de televisão.',
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Força',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Força',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Força',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Força',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Força',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
