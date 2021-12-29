import 'dart:math';

class TodoModel {
  TodoModel({
    required this.title,
    required this.description,
  });
  final int id = Random().nextInt(32);
  final DateTime date = DateTime.now();
  String title;
  String description;
}
