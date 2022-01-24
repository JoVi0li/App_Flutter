import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_money_app/src/utils/constants.dart';
import 'package:save_money_app/src/widgets/custom_screen_title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            top: 60,
            bottom: 25,
            left: 30,
            right: 30,
          ),
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomScreenTitle(
                title: 'Seu\nSaldo',
                subTitle: 'Bom dia',
              ),
              const SizedBox(height: 100),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const SizedBox(
                      width: 328,
                      height: 328,
                      child: CircularProgressIndicator(
                        strokeWidth: 24,
                        color: secondaryColor,
                        backgroundColor: surfaceColor,
                        value: .1,
                      ),
                    ),
                    Text(
                      'R\$ 10.576,98',
                      style: GoogleFonts.outfit().copyWith(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
