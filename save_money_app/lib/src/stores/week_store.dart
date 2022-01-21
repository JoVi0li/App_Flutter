import 'package:flutter/cupertino.dart';
import 'package:save_money_app/src/repositories/week_repository.dart';
import 'package:save_money_app/src/states/week/error_week_state.dart';
import 'package:save_money_app/src/states/week/initial_week_state.dart';
import 'package:save_money_app/src/states/week/loading_week_state.dart';
import 'package:save_money_app/src/states/week/success_week_state.dart';
import 'package:save_money_app/src/states/week/week_state.dart';

class WeekStore extends ValueNotifier<WeekState> {
  WeekStore(this.weekRepository) : super(InitialWeekState());

  final WeekRepository weekRepository;

  initWeekState() {
    value = LoadingWeekState();
    try {
      var weekList = weekRepository.weekList;
      value = SuccessWeekState(
        message: "Lista recuperada",
        value: weekList,
      );
    } catch (e) {
      value = ErrorWeekState(message: "Falha ao tentar obter a lista");
    }
  }
}
