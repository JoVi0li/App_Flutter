import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CarDetailAppBar extends StatelessWidget {
  const CarDetailAppBar({Key? key, required this.carName}) : super(key: key);

  final String carName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        carName,
        style: GoogleFonts.poppins().copyWith(
          fontSize: getProportionateScreenWidth(20),
          fontWeight: FontWeight.w600,
          color: black,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
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
        ),
      ],
    );
  }
}
