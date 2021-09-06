import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streaming_now/models/item_model.dart';
import 'package:streaming_now/providers/item_list_provider.dart';
import 'package:streaming_now/screens/search/components/search_card.dart';
import 'package:streaming_now/utils/constants.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ItemListProvider>(context);
    final List<ItemModel> itemsList = provider.items;
    return GridView.builder(
      padding: const EdgeInsets.only(
        bottom: 60,
        top: 30,
        left: 8,
        right: 8,
      ),
      itemCount: itemsList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (ctx, index) => SearchCard(
        imageUrl:
          itemsList[index].posterPath,
        title: itemsList[index].title,
        dataLancamento: itemsList[index].realeseDate,
        categoria: itemsList[index].genres.toString(),
        faixaEtaria: '16',
        corFaixaEtaria: errorAndAccentColor,
      ),
    );
  }
}
