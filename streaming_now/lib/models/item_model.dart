import 'package:flutter/material.dart';

class ItemModel with ChangeNotifier {
  final int id;
  final String title;
  final String posterPath;
  final String realeseDate;
  final List<String> genres;
  bool isFavorite;

  ItemModel(
      {required this.realeseDate,
      required this.genres,
      required this.id,
      required this.title,
      required this.posterPath,
      this.isFavorite = false});

  void toogleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
