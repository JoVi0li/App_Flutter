import 'package:flutter/material.dart';
import 'package:shop/size_config.dart';

class LookIcon extends StatelessWidget {
  const LookIcon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      splashColor: Theme.of(context).accentColor,
      onTap: () {},
      child: Container(
        height:  getProportionateScreenHeight(64.0),
        width: getProportionateScreenWidht(64.0),
        child: Image.asset('assets/images/look.png'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
        ),
      ),
    );
  }
}