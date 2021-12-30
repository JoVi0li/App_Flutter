import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalWidget extends StatefulWidget {
  const ModalWidget({Key? key}) : super(key: key);

  @override
  State<ModalWidget> createState() => _ModalWidgetState();
}

class _ModalWidgetState extends State<ModalWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextFormField(
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
                  
                  // errorText: "Informe um nome para a tafera",
                  // errorStyle: GoogleFonts.openSans(
                  //   textStyle: const TextStyle(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w200,
                  //   ),
                  // ),
                ),
              ),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Descreva o que você tem que fazer',
                  hintStyle: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
