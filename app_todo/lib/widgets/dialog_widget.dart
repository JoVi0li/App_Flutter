import 'package:app_todo/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      contentPadding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
      alignment: Alignment.center,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            todoModel.title,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                letterSpacing: 1,
              ),
            ),
          ),
          Text(
            DateFormat("dd/MM hh:mm").format(todoModel.date),
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                todoModel.description,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
