import 'package:flutter/cupertino.dart';
import 'package:sp_medical_group/src/models/loginModel.dart';

class LoginController {
  LoginModel loginModel = new LoginModel();

  efetuarLogin(BuildContext context, String email, String senha) {
    return loginModel.logar(context, email, senha);
  }
}
