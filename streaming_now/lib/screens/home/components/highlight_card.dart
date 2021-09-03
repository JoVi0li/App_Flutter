import 'package:flutter/material.dart';
import 'package:streaming_now/utils/size_config.dart';

class CustomHighlightCard extends StatelessWidget {
  const CustomHighlightCard({Key? key, required this.imageUrl})
      : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: getProportionateScreenWidth(368),
        height: getProportionateScreenHeight(300),
        margin: EdgeInsets.only(
          left: getProportionateScreenWidth(8),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          child: ClipRRect(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
