import 'package:flutter/cupertino.dart';
import 'package:save_money_app/src/screens/historic_screen.dart';
import 'package:save_money_app/src/screens/home_screen.dart';

class MyTabController extends ValueNotifier<int> {
  MyTabController() : super(0);

  final List<Widget> screens = [
    const HomeScreen(),
    const HistoricScreen(),
  ];

  void selectScreen(int index) {
    value = index;
  }
}
