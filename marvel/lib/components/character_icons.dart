import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CharacterIcons extends StatelessWidget {
  const CharacterIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 32),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(0, 91, 234, 1),
                    Color.fromRGBO(0, 198, 251, 1)
                  ]),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/hero.svg',
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            height: 56,
            width: 56,
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(237, 29, 36, 1),
                    Color.fromRGBO(237, 31, 105, 1)
                  ]),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/villain.svg',
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            height: 56,
            width: 56,
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(178, 36, 239, 1),
                    Color.fromRGBO(117, 121, 255, 1)
                  ]),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/antihero.svg',
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            height: 56,
            width: 56,
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(11, 163, 96, 1),
                    Color.fromRGBO(60, 186, 146, 1)
                  ]),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/alien.svg',
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            height: 56,
            width: 56,
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(255, 126, 179, 1),
                    Color.fromRGBO(255, 117, 140, 1)
                  ]),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/human.svg',
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
