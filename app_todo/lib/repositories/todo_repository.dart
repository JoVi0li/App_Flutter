import 'package:app_todo/database/todo_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqlite_api.dart';

class TodoRepository extends ChangeNotifier {
  late Database db;
  List<Map<String, Object?>> _todos = [];

  List<Map<String, Object?>> get todos => _todos;

  TodoRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getTodos();
  }

  _getTodos() async {
    db = await TodoDatabase.instance.database;
    final todos = await db.query('todo');

    _todos = todos;
  }
}
