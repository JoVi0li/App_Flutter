import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.press, required this.text,
  }) : super(key: key);

  final Function() press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: GoogleFonts.poppins()
              .copyWith(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(orange),
          fixedSize: MaterialStateProperty.all(
            Size(
              getProportionateScreenWidth(305),
              getProportionateScreenHeight(57),
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}