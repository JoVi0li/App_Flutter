import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Força',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Text(
              'Inteligência',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Text(
              'Agilidade',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Text(
              'Resistência',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Text(
              'Velocidade',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
