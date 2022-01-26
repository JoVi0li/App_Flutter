import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_money_app/src/utils/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.semana,
    required this.valor,
  }) : super(key: key);
  final String semana;
  final String valor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 368,
      margin: const EdgeInsets.only(
        bottom: 10,
        top: 5,
      ),
      decoration: BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(
          offset: const Offset(0, 0),
          blurRadius: 10,
          spreadRadius: 3,
          color: primaryColor.withOpacity(0.15),
          blurStyle: BlurStyle.normal,
        ),
      ], color: backgroundColor, borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              semana,
              style: GoogleFonts.outfit().copyWith(
                fontSize: 24,
                color: primaryColor,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              valor,
              style: GoogleFonts.outfit().copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
