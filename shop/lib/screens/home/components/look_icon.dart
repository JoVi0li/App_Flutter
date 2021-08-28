import 'package:flutter/material.dart';
import 'package:shop/size_config.dart';

class LookIcon extends StatelessWidget {
  const LookIcon({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      splashColor: Theme.of(context).accentColor,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.3),
        child: Container(
          height: getProportionateScreenHeight(64.0),
          width: getProportionateScreenWidht(64.0),
          child: Image.asset(image),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
