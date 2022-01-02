import 'package:app_todo/models/todo_model.dart';
import 'package:flutter/material.dart';

class TodoController extends ChangeNotifier {
  List<TodoModel> items = [
    TodoModel(
      title: 'Teste',
      description: 'Descrição de testeaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ),
    TodoModel(
      title: 'Teste2',
      description: 'Descrição de teste2',
    ),
    TodoModel(
      title: 'Teste3',
      description: 'Descrição de teste3',
    ),

  ];

  List<TodoModel> readAllTodo() {
    return items;
  }

  TodoModel readOneTodo(int id) {
    return [...items].firstWhere((element) => element.id == id);
  }

  void createTodo(TodoModel newTodoModel) {
    items.add(newTodoModel);

    notifyListeners();
  }

  void deleteTodo(int index) {
    items.removeAt(index);

    notifyListeners();
  }
}
