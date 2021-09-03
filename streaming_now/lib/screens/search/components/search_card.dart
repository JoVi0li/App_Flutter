import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streaming_now/utils/constants.dart';
import 'package:streaming_now/utils/size_config.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.dataLancamento,
    required this.faixaEtaria,
    required this.categoria,
    required this.corFaixaEtaria,
  }) : super(key: key);

  final String imageUrl, dataLancamento, faixaEtaria, categoria, title;
  final Color corFaixaEtaria;

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
                  imageUrl,
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
                            child: SvgPicture.asset('assets/icons/Heart.svg'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            dataLancamento,
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
                            categoria,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 11),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: corFaixaEtaria,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                faixaEtaria,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(fontSize: 11),
                              ),
                            ),
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
