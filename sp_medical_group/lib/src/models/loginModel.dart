import 'package:sp_medical_group/src/views/list.dart';
import 'package:flutter/material.dart';

class LoginModel {
  logar(BuildContext context, String email, String senha) {
    final String emailFinal = "jovi.oli@gmail.com";
    final String senhaFinal = "jovi1304";
    final String mensagemErro = "E-mail ou senha inválidos, tente novamente.";

    if (email == emailFinal && senha == senhaFinal) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Lista()));
    } else {
      return mensagemErro;
    }
  }
}
