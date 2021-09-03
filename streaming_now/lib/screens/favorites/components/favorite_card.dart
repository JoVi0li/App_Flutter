import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streaming_now/utils/constants.dart';
import 'package:streaming_now/utils/size_config.dart';

class FavoritesCard extends StatelessWidget {
  const FavoritesCard({Key? key, required this.title, required this.categorias})
      : super(key: key);

  final String title, categorias;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: getProportionateScreenWidth(187),
        height: getProportionateScreenHeight(180),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
              child: Container(
                height: getProportionateScreenHeight(100),
                width: double.infinity,
                child: Image.network(
                  'https://gartic.com.br/imgs/mural/am/amandabelela/coracao.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
              child: Container(
                height: getProportionateScreenHeight(80),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cardAndButtonColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 14),
                          ),
                          InkWell(
                            child: SvgPicture.asset('assets/icons/Edit.svg'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '8 filmes e séries',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            categorias,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 11),
                          ),
                          InkWell(
                            child: SvgPicture.asset('assets/icons/Share.svg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
