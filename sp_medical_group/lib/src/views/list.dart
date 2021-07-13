import 'package:flutter/material.dart';
import 'package:sp_medical_group/src/models/listModel.dart';
import 'package:sp_medical_group/src/models/loginModel.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  List<Map<String, String>> listaConsultas = ListModel().consultas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Minhas consultas",
            style: TextStyle(
                color: Color.fromRGBO(131, 190, 223, 1),
                fontSize: 36,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 120,
                width: MediaQuery.of(context).size.width * .5,
                child: Center(
                  child: Text(
                    "Médico: ${listaConsultas[index].values.first}\n Paciente: ${listaConsultas[index].values.elementAt(1)} \n Data: ${listaConsultas[index].values.elementAt(2)} \n Situação: ${listaConsultas[index].values.last}",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 246, 246, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: listaConsultas.length),
      ),
    );
  }
}
