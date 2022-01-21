import 'package:save_money_app/src/database/db.dart';
import 'package:save_money_app/src/models/week_model.dart';
import 'package:sqflite/sqlite_api.dart';

class WeekRepository {
  late Database db;
  List<WeekModel> _weekModelList = [];

  List<WeekModel> get weekList => _weekModelList;

  WeekRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getWeekList();
  }

  _getWeekList() async {
    db = await DB.instance.database;

    List week = await db.query('week', limit: 52);

    _weekModelList = week
        .map((e) => WeekModel(
              id: e['id'],
              weekEnum: e['weekEnum'],
              value: e['value'],
            ))
        .toList();
  }
}
