import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            Divider(
              height: 50,
              color: Colors.white,
            ),
            Text(
              "Bem-Vindo!",
              style: TextStyle(
                  color: Color.fromRGBO(131, 190, 223, 1),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 80,
              color: Colors.white,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .90,
              height: 100,
              child: TextField(
                autofocus: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .90,
              height: 100,
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Entrar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(131, 190, 223, 1)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
