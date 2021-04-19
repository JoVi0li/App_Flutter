import './resultado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questionario.dart';

main() {
  runApp(Perguntas());
}

class Perguntas extends StatefulWidget {
  @override
  _PerguntasState createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  int _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'pergunta': 'Qual é sua a cor favorita?',
      'resposta': [
        {'resposta': 'Azul', 'nota': 10},
        {'resposta': 'Verde', 'nota': 10},
        {'resposta': 'Vermelho', 'nota': 10},
        {'resposta': 'Branco', 'nota': 10}
      ]
    },
    {
      'pergunta': 'Qual o nome do seu cachorro?',
      'resposta': [
        {'resposta': 'Duque', 'nota': 10},
        {'resposta': 'Odin', 'nota': 0},
        {'resposta': 'Zeus', 'nota': 1},
        {'resposta': 'Wilson', 'nota': 10}
      ]
    },
    {
      'pergunta': 'Qual é o seu filme favorito?',
      'resposta': [
        {'resposta': 'Avatar', 'nota': 10},
        {'resposta': 'Senhor Dos Anéis', 'nota': 7},
        {'resposta': 'O Lado Bom Da Vida', 'nota': 10},
        {'resposta': 'Papacu E As Sete Virgens', 'nota': 100}
      ]
    },
    {
      'pergunta': 'Qual é a sua música favorita?',
      'resposta': [
        {'resposta': 'Cadeira De Rodas', 'nota': 2},
        {'resposta': 'Página De Amigos', 'nota': 6},
        {'resposta': 'Onde Anda Você', 'nota': 10},
        {'resposta': 'Garota De Ipanemalson', 'nota': 0}
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuiz() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz"),
              backgroundColor: Colors.teal,
            ),
            body: temPerguntaSelecionada
                ? Questionario(
                    perguntas: _perguntas,
                    perguntaSelecionada: _perguntaSelecionada,
                    responder: _responder,
                  )
                : Resultado(_pontuacaoTotal, _reiniciarQuiz)));
  }
}
