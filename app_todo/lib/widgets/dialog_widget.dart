import 'package:app_todo/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    Key? key,
    required this.todoModel,
  }) : super(key: key);

  final TodoModel todoModel;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(todoModel.title),
                Text(todoModel.description),
                Text(DateFormat("dd/MM hh:mm").format(todoModel.date))
              ],
            ),
          ),
        )
      ],
    );
  }
}
