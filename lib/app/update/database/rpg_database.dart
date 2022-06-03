import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dao/character_dao.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'maia.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(CharacterDao.tableSql);
    },
    version: 1,
  );
}
