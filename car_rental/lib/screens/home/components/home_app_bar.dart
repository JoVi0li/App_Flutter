import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Car Rental',
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
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            icon: SvgPicture.asset('assets/icons/menu-burger-settings.svg'),
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
