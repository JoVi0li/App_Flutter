import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CarListAppBar extends StatelessWidget {
  const CarListAppBar({Key? key, required this.listTitle}) : super(key: key);
  final String listTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        listTitle,
        style: GoogleFonts.poppins().copyWith(
            fontWeight: FontWeight.w600,
            fontSize: getProportionateScreenWidth(20),
            color: black),
      ),
      centerTitle: true,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              'assets/icons/chevron-arrow-left.svg',
              width: getProportionateScreenWidth(84),
              height: getProportionateScreenHeight(48),
            ),
            tooltip: 'Back to the home screen',
          );
        },
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/Beep Beep Avatar.png'),
          tooltip: 'Open the user screen',
        )
      ],
    );
  }
}
