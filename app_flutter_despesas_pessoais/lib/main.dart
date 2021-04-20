import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(109, 255, 220, 100),
        title: Text(
          'Minhas Despesas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Bebas Neue'
          ),
        ),
      ),
    );
  }
}
