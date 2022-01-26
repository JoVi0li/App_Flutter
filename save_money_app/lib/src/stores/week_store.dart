import 'package:flutter/cupertino.dart';
import 'package:save_money_app/src/models/week_model.dart';
import 'package:save_money_app/src/repositories/week_repository.dart';
import 'package:save_money_app/src/states/week/error_week_state.dart';
import 'package:save_money_app/src/states/week/initial_week_state.dart';
import 'package:save_money_app/src/states/week/loading_week_state.dart';
import 'package:save_money_app/src/states/week/success_week_state.dart';
import 'package:save_money_app/src/states/week/week_state.dart';

class WeekStore extends ValueNotifier<WeekState> {
  WeekStore(this._weekRepository) : super(InitialWeekState()) {
    _initWeekState();
  }

  final WeekRepository _weekRepository;

  _initWeekState() {
    value = LoadingWeekState();

    try {
      var weekList = _weekRepository.weekList;
      value = SuccessWeekState(
        message: "Lista recuperada",
        value: weekList,
      );
    } catch (e) {
      value = ErrorWeekState(message: "Falha ao tentar obter a lista");
    }
  }

  insertWeekModel(WeekModel weekModel) async {
    value = LoadingWeekState();

    try {
      await _weekRepository.insertWeekList(weekModel);
      var weekList = _weekRepository.weekList;
      value = SuccessWeekState(
        message: 'WeekModel inserida no banco de dados com sucesso',
        value: weekList,
      );
    } catch (e) {
      value = ErrorWeekState(
        message: 'Falha ao inserir a WeekModel no banco de dados',
      );
    }
  }

  retriverWeekModel() async {
    try {
      await _weekRepository.getWeekList();

      value = SuccessWeekState(
        message: 'Lista recuperada',
        value: _weekRepository.weekList,
      );
    } catch (e) {
      value = ErrorWeekState(
        message: 'Erro ao tentar recuperar a lista de WeekModel',
      );
    }
  }
}
