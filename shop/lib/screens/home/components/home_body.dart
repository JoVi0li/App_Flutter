import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/home/components/look_icon.dart';
import 'package:shop/size_config.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: primary,
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(119.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Looks do dia",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(5),
                    children: <Widget>[
                      LookIcon(),
                      LookIcon(),
                      LookIcon(),
                      LookIcon(),
                      LookIcon(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
