import 'package:flutter/material.dart';
import 'package:streaming_now/utils/size_config.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: getProportionateScreenWidth(180),
        height: getProportionateScreenHeight(108),
        margin: EdgeInsets.only(
          left: getProportionateScreenWidth(8),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        ),
        child: ClipRRect(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
