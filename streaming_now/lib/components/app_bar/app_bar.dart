import 'package:flutter/material.dart';
import 'package:streaming_now/utils/size_config.dart';

PreferredSize customAppBar(String title, BuildContext context) {
  return PreferredSize(
    preferredSize: Size(
      double.infinity,
      getProportionateScreenHeight(50),
    ),
    child: AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline2,
      ),
      centerTitle: true,
    ),
  );
}
