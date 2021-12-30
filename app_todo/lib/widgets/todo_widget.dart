import 'package:app_todo/models/todo_model.dart';
import 'package:app_todo/widgets/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TodoWidget extends StatefulWidget {
  const TodoWidget({
    Key? key,
    required this.todoModel,
  }) : super(key: key);

  final TodoModel todoModel;

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return DialogWidget(
              todoModel: widget.todoModel,
            );
          },
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 6,
        ),
        child: ListTile(
          leading: Transform.scale(
            scale: 1.3,
            child: Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              checkColor: Colors.blueGrey,
              side: const BorderSide(
                width: 2,
                color: Colors.blueGrey,
                style: BorderStyle.solid,
              ),
              activeColor: Colors.transparent,
              onChanged: (_) {
                setState(() {
                  checked = !checked;
                });
              },
              value: checked,
            ),
          ),
          title: Text(
            widget.todoModel.title,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                letterSpacing: 1,
              ),
            ),
          ),
          subtitle: Text(
            widget.todoModel.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          trailing: Text(
            DateFormat("dd/MM hh:mm").format(widget.todoModel.date),
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          style: ListTileStyle.list,
        ),
      ),
    );
  }
}
