import 'package:flutter/material.dart';
import 'package:streaming_now/screens/home/components/highlight_card.dart';
import 'package:streaming_now/utils/size_config.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getProportionateScreenWidth(290),
            margin: EdgeInsets.only(
              top: 30,
              bottom: 15,
            ),
            child: Text(
              'Dia bom para um filmezinho, né?',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Container(
            height: getProportionateScreenHeight(300),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (ctx, index) {
                return CustomHighlightCard(
                  imageUrl:
                      'https://i.pinimg.com/564x/c3/b4/60/c3b46006d36cd6841faff8aa453348ea.jpg',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
