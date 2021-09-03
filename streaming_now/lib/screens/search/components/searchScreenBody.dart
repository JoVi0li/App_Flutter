import 'package:flutter/material.dart';
import 'package:streaming_now/screens/search/components/search_card.dart';
import 'package:streaming_now/utils/constants.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(
        bottom: 60,
        top: 30,
        left: 8,
        right: 8,
      ),
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (ctx, index) => SearchCard(
        imageUrl:
            'https://tecnoblog.net/wp-content/uploads/2020/11/os-simpsons-e1605911292734.jpg',
        title: 'Simpsons',
        dataLancamento: '2014',
        categoria: 'Infantil, Aventura, Lúdico',
        faixaEtaria: '16',
        corFaixaEtaria: errorAndAccentColor,
      ),
    );
  }
}
