import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class TodoDatabase {
  TodoDatabase._();

  static final TodoDatabase instance = TodoDatabase._();

  static Database? _database;

  get database async {
    if (_database != null) {
      return _database;
    }

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), "todo_app.db"),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_todo);
  }

  String get _todo => '''
    CREATE TABLE todo (
      id TEXT PRIMARY KEY,
      date TEXT,
      title TEXT,
      description TEXT,
    )
  ''';
}
