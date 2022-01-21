import 'package:save_money_app/src/states/week/week_state.dart';

class ErrorWeekState extends WeekState {
  ErrorWeekState({required this.message});

  final String message;
}