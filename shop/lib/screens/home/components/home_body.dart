import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/home/components/card_master.dart';
import 'package:shop/screens/home/components/look_icon.dart';
import 'package:shop/size_config.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(20.0),
                  ),
                  height: getProportionateScreenHeight(137.0),
                  width: getProportionateScreenWidht(374.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Looks do dia',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (ctx, index) =>
                              LookIcon(image: 'assets/images/look.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Destaques',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: getProportionateScreenHeight(540.0),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) => CardMaster(),
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
