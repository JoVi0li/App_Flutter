import 'package:flutter/material.dart';
import 'package:save_money_app/src/widgets/custom_screen_title_widget.dart';

class HistoricScreen extends StatelessWidget {
  const HistoricScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            top: 60,
            bottom: 25,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
               CustomScreenTitle(
                subTitle: 'Bom dia',
                title: 'Seu\nHistórico',
              )
            ],
          ),
        ),
      ),
    );
  }
}
