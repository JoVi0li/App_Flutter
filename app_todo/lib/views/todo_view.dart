import 'package:app_todo/controllers/todo_controller.dart';
import 'package:app_todo/widgets/modal_widget.dart';
import 'package:app_todo/widgets/todo_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoView extends StatefulWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  @override
  void initState() {
    super.initState();
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
      body: Consumer<TodoController>(
        builder: (context, todo, child) {
          return ListView.builder(
            itemCount: todo.readAllTodo().length,
            itemBuilder: (BuildContext context, int index) {
              return TodoWidget(
                todoModel: todo.readAllTodo()[index],
              );
            },
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
