import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:save_money_app/src/states/week/error_week_state.dart';
import 'package:save_money_app/src/states/week/initial_week_state.dart';
import 'package:save_money_app/src/states/week/loading_week_state.dart';
import 'package:save_money_app/src/states/week/success_home_week_state.dart';
import 'package:save_money_app/src/stores/week_store.dart';
import 'package:save_money_app/src/utils/constants.dart';
import 'package:save_money_app/src/widgets/custom_screen_title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final WeekStore weekStore;

  @override
  void initState() {
    super.initState();
    weekStore = context.read<WeekStore>();
    weekStore.retriverTotal();
  }


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
                        value: .0,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: weekStore,
                      builder: (context, value, child) {
                        if (value is InitialWeekState) {
                          return Text(
                            '0',
                            style: GoogleFonts.outfit().copyWith(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          );
                        } else if (value is SuccessHomeWeekState) {
                          return Text(
                            value.value.toString(),
                            style: GoogleFonts.outfit().copyWith(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          );
                        } else if (value is LoadingWeekState) {
                          return const CircularProgressIndicator();
                        } else if (value is ErrorWeekState) {
                          return Text(
                            'Erro ao tentar recuperar o saldo',
                            style: GoogleFonts.outfit().copyWith(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          );
                        } else {
                          return Text(
                            '1',
                            style: GoogleFonts.outfit().copyWith(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          );
                        }
                      },
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
