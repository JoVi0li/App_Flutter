import 'dart:math';

import 'package:save_money_app/src/enums/week_enum.dart';

class WeekModel {
  final Random id;
  final WeekEnum weekEnum;
  final double value;
  
  WeekModel({
    required this.id,
    required this.weekEnum,
    required this.value,
  });
}
