import 'package:flutter/material.dart';
import 'package:streaming_now/screens/home/components/card.dart';
import 'package:streaming_now/screens/home/components/highlight_card.dart';
import 'package:streaming_now/screens/home/components/section_title.dart';
import 'package:streaming_now/utils/size_config.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            text: 'Dia bom para um filmezinho, né?',
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
          SectionTitle(
            text: 'Escolhidos pensando em você!',
          ),
          Container(
            height: getProportionateScreenHeight(120),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (ctx, index) {
                return HomeCard(
                  imageUrl:
                      'https://i.pinimg.com/564x/c3/b4/60/c3b46006d36cd6841faff8aa453348ea.jpg',
                );
              },
            ),
          ),
          SectionTitle(
            text: 'Hora do terror',
          ),
          Container(
            height: getProportionateScreenHeight(120),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (ctx, index) {
                return HomeCard(
                  imageUrl:
                      'https://i.pinimg.com/564x/c3/b4/60/c3b46006d36cd6841faff8aa453348ea.jpg',
                );
              },
            ),
          ),
          SectionTitle(
            text: 'Chorei muito assistindo esses',
          ),
          Container(
            height: getProportionateScreenHeight(120),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (ctx, index) {
                return HomeCard(
                  imageUrl:
                      'https://i.pinimg.com/564x/c3/b4/60/c3b46006d36cd6841faff8aa453348ea.jpg',
                );
              },
            ),
          ),
          SectionTitle(
            text: 'Esses foram lançados recentemente!',
          ),
          Container(
            height: getProportionateScreenHeight(120),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (ctx, index) {
                return HomeCard(
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
