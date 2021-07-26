import 'package:car_rental/constants.dart';
import 'package:car_rental/screens/home/components/home_content.dart';
import 'package:car_rental/size_config.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: getProportionateScreenHeight(48),
        ),
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            HomeContent(
              color: aOrange,
              title: 'Small Cars',
              subTitle: 'Low Price',
              image: 'assets/images/Beep Beep Medium Vehicle.png',

            ),
            HomeContent(
              color: aOrange,
              title: 'Small Cars',
              subTitle: 'Low Price',
              image: 'assets/images/Beep Beep Large Vehicle.png',
            ),
          ],
        ),
      ),
    );
  }
}
