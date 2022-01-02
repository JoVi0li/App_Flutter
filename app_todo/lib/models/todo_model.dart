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

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'title': title,
      'description': description
    };
  }

  @override
  String toString() {
    return 'TodoModel{id: $id, date: $date, title: $title, description: $description}';
  }
}
