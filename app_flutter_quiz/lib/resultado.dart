import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuiz;

  Resultado(this.pontuacao, this.reiniciarQuiz);

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'Vlw!';
    } else if (pontuacao < 20) {
      return 'Parabéns';
    } else if (pontuacao < 100) {
      return 'Você é foda!';
    } else {
      return 'Homem honrado!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 40),
          ),
        ),
        TextButton(
          onPressed: reiniciarQuiz,
          child: Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red
            ),
          ))
      ],
    );
  }
}
