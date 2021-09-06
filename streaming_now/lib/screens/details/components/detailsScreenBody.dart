import 'package:flutter/material.dart';
import 'package:streaming_now/utils/constants.dart';
import 'package:streaming_now/utils/size_config.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String image = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: getProportionateScreenHeight(300),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lost',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Container(
                        width: getProportionateScreenWidth(100),
                        height: getProportionateScreenHeight(30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: cardAndButtonColor),
                        child: Center(
                          child: Text(
                            'Completo',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Text(
                    'dkpadkpasmdpkmAKPoldmpam,dpla,dlpás,ldp´,a´d,ás,dás,d´,asd´,as´d,a´sd,´,',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Diretores',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Gêneros',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Elenco',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
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
    );
  }
}
