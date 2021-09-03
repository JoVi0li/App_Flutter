import 'package:flutter/material.dart';
import 'package:streaming_now/screens/favorites/components/favorite_card.dart';

class FavoritesScreenBody extends StatelessWidget {
  const FavoritesScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(
        bottom: 60,
        top: 30,
        left: 8,
        right: 8,
      ),
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (ctx, index) => FavoritesCard(
        title: 'Meus favoritos',
        categorias: 'Todas as categorias',
      ),
    );
  }
}
