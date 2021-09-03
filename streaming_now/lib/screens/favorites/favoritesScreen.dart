import 'package:flutter/material.dart';
import 'package:streaming_now/components/app_bar/app_bar.dart';
import 'package:streaming_now/screens/favorites/components/favoritesScreenBody.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Salvos', context),
      body: FavoritesScreenBody(),
    );
  }
}
