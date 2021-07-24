import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(
            image!,
            height: getProportionateScreenHeight(484),
            width: getProportionateScreenWidth(427),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Column(
              children: [
                Text(
                  title!,
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenWidth(24),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    text!,
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(61),
                ),
           
              ],
            ),
          ),
        )
      ],
    );
  }
}
