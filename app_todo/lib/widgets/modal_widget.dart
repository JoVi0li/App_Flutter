import 'package:app_todo/controllers/todo_controller.dart';
import 'package:app_todo/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalWidget extends StatefulWidget {
  const ModalWidget({Key? key}) : super(key: key);

  @override
  State<ModalWidget> createState() => _ModalWidgetState();
}

class _ModalWidgetState extends State<ModalWidget> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _titleTextEditingController;
  late TextEditingController _descriptionTextEditingController;
  late TodoModel todoModel;

  @override
  void initState() {
    super.initState();
    _titleTextEditingController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    _descriptionTextEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final _todoProvider = Provider.of<TodoController>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 8.0,
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.length < 3 || value.isEmpty) {
                            return "A tarefa deve ter pelo menos 4 letras";
                          }
                        },
                        onSaved: (newValue) {
                          _titleTextEditingController.text = newValue!;
                        },
                        controller: _titleTextEditingController,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          hintText: 'O que há para fazer?',
                          hintStyle: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          prefixIcon: const Icon(Icons.construction_outlined),
                          prefixIconColor: Colors.blueGrey[800],
                          labelText: 'Tarefa',
                          labelStyle: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          fillColor: Colors.blueAccent[800],
                          focusColor: Colors.blueAccent[800],
                          hoverColor: Colors.blueAccent[800],
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height,
                        ),
                        child: TextFormField(
                          onSaved: (newValue) {
                            _descriptionTextEditingController.text = newValue!;
                          },
                          validator: (value) {
                            if (value!.length < 3 || value.isEmpty) {
                              return "A descrição deve ter pelo menos 4 letras";
                            }
                          },
                          maxLines: null,
                          controller: _descriptionTextEditingController,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Descreva o que você tem que fazer',
                            hintStyle: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.assignment_outlined),

                            prefixIconColor: Colors.blueGrey[800],
                            labelText: 'Descrição',
                            labelStyle: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            // errorText: "Dê uma descrição para a tarefa",
                            // errorStyle: GoogleFonts.openSans(
                            //   textStyle: const TextStyle(
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.w200,
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueGrey[800],
                    ),
                    fixedSize: MaterialStateProperty.all(
                      const Size(
                        double.maxFinite,
                        60.0,
                      ),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    splashFactory: InkRipple.splashFactory,
                    elevation: MaterialStateProperty.all(12.0),
                    overlayColor: MaterialStateProperty.all(
                      Colors.blueGrey[700],
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      todoModel = TodoModel(
                        title: _titleTextEditingController.value.text,
                        description:
                            _descriptionTextEditingController.value.text,
                      );
                      _todoProvider.createTodo(todoModel);
                    }
                  },
                  child: Text(
                    "Adicionar tarefa",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
