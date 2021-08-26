import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/home/components/home_body.dart';
import 'package:shop/size_config.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HomeBody(),
    );
  }
}
