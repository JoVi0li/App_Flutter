import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_money_app/src/states/week/error_week_state.dart';
import 'package:save_money_app/src/states/week/initial_week_state.dart';
import 'package:save_money_app/src/states/week/loading_week_state.dart';
import 'package:save_money_app/src/states/week/success_historic_week_state.dart';
import 'package:save_money_app/src/stores/week_store.dart';
import 'package:save_money_app/src/widgets/custom_card.dart';
import 'package:save_money_app/src/widgets/custom_screen_title_widget.dart';

class HistoricScreen extends StatefulWidget {
  const HistoricScreen({Key? key}) : super(key: key);

  @override
  State<HistoricScreen> createState() => _HistoricScreenState();
}

class _HistoricScreenState extends State<HistoricScreen> {
  late final WeekStore weekStore;

  @override
  void initState() {
    super.initState();
    weekStore = context.read<WeekStore>();
    weekStore.retriverWeekModel();
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomScreenTitle(
                subTitle: 'Bom dia',
                title: 'Seu\nHistórico',
              ),
              const SizedBox(height: 56),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: ValueListenableBuilder(
                  valueListenable: weekStore,
                  builder: (context, value, child) {
                    if (weekStore is InitialWeekState) {
                      return const CircularProgressIndicator();
                    } else if (value is LoadingWeekState) {
                      return const CircularProgressIndicator();
                    } else if (value is ErrorWeekState) {
                      return Text(value.message);
                    } else if (value is SuccessHistoricWeekState) {
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: value.value.length,
                        itemBuilder: (ctx, index) {
                          return CustomCard(
                            semana: value.value[index].week,
                            valor: value.value[index].value.toString(),
                          );
                        },
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
