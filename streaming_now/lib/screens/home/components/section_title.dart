import 'package:flutter/material.dart';
import 'package:streaming_now/utils/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(290),
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(30),
        bottom:  getProportionateScreenHeight(15),
        left: getProportionateScreenWidth(10),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
