import 'package:flutter/material.dart';
import 'package:shop/size_config.dart';

class CardMaster extends StatelessWidget {
  const CardMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: getProportionateScreenWidht(364.0),
        height: getProportionateScreenHeight(540.0),
        child: Stack(
          children: [
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/jaqueta de couro.png',
                ),
              ),
            ),
            Positioned(
              bottom: 0.5,
              child: Container(
                width: getProportionateScreenWidht(364.0),
                height: getProportionateScreenHeight(164.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0),
                      Colors.black54,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jaqueta de couro',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (ctx, index) => Icon(
                            Icons.star_outline,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                          top: 28,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 399.99',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(color: Colors.white),
                            ),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                              size: 36,
                            )
                          ],
                        ),
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
