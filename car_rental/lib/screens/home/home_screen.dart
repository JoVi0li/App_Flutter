import 'package:car_rental/screens/home/components/home_app_bar.dart';
import 'package:car_rental/screens/home/components/home_body.dart';
import 'package:car_rental/screens/home/components/home_drawer.dart';
import 'package:car_rental/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: HomeAppBar(),
        preferredSize: Size.fromHeight(
          getProportionateScreenHeight(55),
        ),
      ),
      drawer: HomeDrawer(),
      body: Container(
        color: Colors.white,
        child: HomeBody(),
      ),
    );
  }
}
