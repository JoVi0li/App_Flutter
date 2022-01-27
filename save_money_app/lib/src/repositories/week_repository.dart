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
    await getWeekList();
  }

  getWeekList() async {
    db = await DB.instance.database;

    List week = await db.query('week', limit: 52);

    _weekModelList = week.map((e) => WeekModel.fromJson(e)).toList();
  }

  insertWeekList(WeekModel weekModel) async {
    try {
      db = await DB.instance.database;
      db.transaction((txn) async {
        await txn.insert('week', weekModel.toJson());
      });
    } catch (e) {
      return e.toString();
    }
  }

  getTotal() async {
    try {
      db = await DB.instance.database;
      List list = await db.query('week');

      double total = 0;

      for (var element in list) {
        total = total + element['value'];
      }

      return total;
    } catch (e) {

      return e.toString();

    }
  }
}
