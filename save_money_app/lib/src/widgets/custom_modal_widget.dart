import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_money_app/src/utils/constants.dart';

class CustomModalWidget extends StatelessWidget {
  const CustomModalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 250,
          bottom: 250,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(40),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: primaryColor.withOpacity(0.25),
              blurRadius: 10,
              spreadRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Semana 47',
              style: GoogleFonts.outfit().copyWith(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: primaryColor,
              ),
            ),
            Row(
              children: [
                Text(
                  'R\$ ',
                  style: GoogleFonts.outfit().copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.normal,
                    color: primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    style: GoogleFonts.outfit().copyWith(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  child: const Icon(
                    Icons.close_rounded,
                    color: errorColor,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      const Size(120, 60),
                    ),
                    overlayColor: MaterialStateProperty.all(
                      errorColor.withOpacity(0.5),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        side: const BorderSide(
                          color: errorColor,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  child: const Icon(
                    Icons.check,
                    color: backgroundColor,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(secondaryColor),
                    fixedSize: MaterialStateProperty.all(
                      const Size(120, 60),
                    ),
                    overlayColor: MaterialStateProperty.all(
                      backgroundColor.withOpacity(0.5),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
