import 'package:car_rental/screens/car_list/components/car_list_app_bar.dart';
import 'package:car_rental/screens/car_list/components/car_list_body.dart';
import 'package:car_rental/size_config.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({Key? key, required this.listTitle}) : super(key: key);

  final String listTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          getProportionateScreenHeight(55),
        ),
        child: CarListAppBar(
          listTitle: listTitle,
        ),
      ),
      body: CarListBody(listTitle: listTitle,),
    );
  }
}
