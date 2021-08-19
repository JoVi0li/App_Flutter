import 'package:flutter/cupertino.dart';

class Meal {
  const Meal({
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final Image image;
}
