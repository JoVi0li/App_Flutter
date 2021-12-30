import 'package:app_todo/controllers/todo_controller.dart';
import 'package:app_todo/models/todo_model.dart';
import 'package:app_todo/widgets/modal_widget.dart';
import 'package:app_todo/widgets/todo_widget.dart';
import 'package:flutter/material.dart';

class TodoView extends StatefulWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  late TodoController todoController;
  late List<TodoModel> todos;

  @override
  void initState() {
    super.initState();
    todoController = TodoController();
    todos = todoController.readAllTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[800],
        title: const Text(
          "ToDo",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return TodoWidget(
            todoModel: todos[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return const ModalWidget();
            },
          );
        },
        child: const Icon(
          Icons.add_circle_outline_rounded,
          color: Colors.blueGrey,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
