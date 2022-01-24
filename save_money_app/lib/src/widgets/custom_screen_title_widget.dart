import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_money_app/src/utils/constants.dart';

class CustomScreenTitle extends StatelessWidget {
  const CustomScreenTitle({
    Key? key,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subTitle,
          style: GoogleFonts.outfit().copyWith(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            color: primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: GoogleFonts.outfit().copyWith(
            fontSize: 48,
            fontWeight: FontWeight.w500,
            color: primaryColor,
            height: 1,
          ),
        ),
      ],
    );
  }
}
